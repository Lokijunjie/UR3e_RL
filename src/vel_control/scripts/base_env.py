import random
import math
from typing import Tuple, List, Dict
import gymnasium as gym
from gymnasium.spaces import Box
import numpy as np
import rospy
from sensor_msgs.msg import JointState
from std_msgs.msg import Float64
from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
import actionlib
import tf
import tf2_ros
from geometry_msgs.msg import TransformStamped, PointStamped
from tf2_geometry_msgs import do_transform_point


#初始关节角度
INIT_POS = [0,-np.pi/2,0,-np.pi/2,0,0] 

class BaseEnv(gym.Env):
    """
    Base environment class for learning behavior of UR3 robot.
    """

    def __init__(self):
        super().__init__()
        rospy.init_node('reach_env', anonymous=True)

        self.joint_state_sub = rospy.Subscriber('/joint_states', JointState, self.joint_states_callback)
        self.client = actionlib.SimpleActionClient('/pos_joint_traj_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        
        self.arm_joint_names = ["base_link", "joint2", "joint3", "joint4", "joint5", "joint6"]
        self.gripper_joint_name = "gripper_joint"
        self.gripper_pub = rospy.Publisher('/gripper_controller/command', Float64, queue_size=10)
        
        self.current_joint_states = None
        self.gripper_velocity = 0.2

        self.max_time_step = 300
        self.current_time_step = 0
        self.max_consecutive_visit_to_goal = 5
        self.cur_consecutive_visit_to_goal = 0

        self.observation_space = self._define_observation_space()
        self.action_space = Box(-1.0, 1.0, (7,))

        # Target position range
        self.target_pub = rospy.Publisher('/target_position', PointStamped, queue_size=10)
        self.target_x_range = (0.2, 0.4)
        self.target_y_range = (-0.2, 0.2)
        self.target_z_range = (0.4, 0.7)

        self.reach_threshold = 0.01

        # Target position in base_link frame
        self.target_position = None

         # Initialize TF listener
        self.tf_buffer = tf2_ros.Buffer()
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)

    def joint_states_callback(self, msg):
        self.current_joint_states = msg

    def _define_observation_space(self) -> Box:
        """
        Define/Get observation space.
        """
        observation_space = Box(float("-inf"), float("inf"), (17,))
        return observation_space
    
    def get_obs(self) -> np.ndarray:
        """
        Get agent's observation.
        The observation contains robot state and a relative position of target object
        Returns:
            (np.ndarray) : agent's observation
        """
        obs = self.get_robot_state()
        target_realtive_position = [self.target.point.x, self.target.point.y, self.target.point.z]
        obs.extend(target_realtive_position)
        return np.array(obs)

    def get_reward(self) -> float:
        """
        This reward function is based on the distance between target object and tip.
        Returns:
            (float) : reward
        """
        distance_between_tip_and_target = self.get_distance_from_tip()
        return -math.log10(distance_between_tip_and_target / 10 + 1)


    def reset_objects(self):
        """
        Reset a target object.
        """
        
        self.target = PointStamped()
        self.target.header.frame_id = 'base_link'
        self.target.header.stamp = rospy.Time.now()


        self.target.point.x = random.uniform(self.target_x_range[0], self.target_x_range[1])
        self.target.point.y = random.uniform(self.target_y_range[0], self.target_y_range[1])
        self.target.point.z = random.uniform(self.target_z_range[0], self.target_z_range[1])
        
        self.target_pub.publish(self.target)


    def is_goal_state(self) -> bool:
        """
        If the target object and the tip are close, it is considered as a goal state.
        """
        distance_between_tip_and_target = self.get_distance_from_tip()
        return distance_between_tip_and_target <= self.reach_threshold

    def get_done_and_info(self) -> Tuple[bool, dict]:
        """
        Get done and info.
        The done indicates whether the episode is over.
        The info contains several informations such as whether the episode is successed.
        Returns :
            (bool) : done
            (dict) : info
        """
        is_success = self.is_success()
        return self.time_over() | is_success, {"success": is_success}

    def is_success(self) -> bool:
        """
        Whether the episode is successed.
        Returns:
            (bool) : if the episode is successed, then return True
        """
        if self.is_goal_state():
            self.cur_consecutive_visit_to_goal += 1
        else:
            self.cur_consecutive_visit_to_goal = 0
        return self.cur_consecutive_visit_to_goal >= self.max_consecutive_visit_to_goal

    def time_over(self) -> bool:
        """
        Whether the episode is progressing beyond the set maximum time step.
        Returns:
            (bool) : if timestep is overed, then return True
        """
        return True if self.current_time_step >= self.max_time_step else False

    def reset(self, seed=None) -> Tuple[np.ndarray, Dict]:
        """
        Reset env and Start new episode.
        Args:
            seed (int, optional): Seed for random number generator.

        Returns:
            (np.ndarray) : initial obs
            (Dict) : info dictionary
        """
        if seed is not None:
            self.seed(seed)

        self.current_time_step = 0
        self.cur_consecutive_visit_to_goal = 0
        # Reset your robot and environment here
        self.reset_objects()
        # Example: Send a reset command to your robot
        obs = self.get_obs()
        info = {}  # 添加一个空的 info 字典
        return obs, info

    def seed(self, seed=None):
        """
        Set the seed for the environment's random number generator.
        Args:
            seed (int, optional): Seed for random number generator.
        """
        np.random.seed(seed)

    def step(self, action: np.ndarray) -> Tuple[np.ndarray, float, bool, bool, dict]:
        """
        Execute the action and Observe the new obs, reward, etc.
        Args:
            action (np.ndarray): the action decided by the agent

        Returns:
            (np.ndarray) : new obs
            (float) : reward
            (bool) : done
            (bool) : truncated
            (dict) : info
        """
        self.current_time_step += 1

        arm_control = action[:-1]
        gripper_control = 1.0 if action[-1] > 0.0 else 0.0

        # 发送关节轨迹
        goal = FollowJointTrajectoryGoal()
        goal.trajectory = JointTrajectory()

        goal.trajectory.joint_names = self.arm_joint_names
        joint_states = rospy.wait_for_message("joint_states", JointState)
        
        goal.trajectory.points = [JointTrajectoryPoint()]
        goal.trajectory.points[0].velocities = arm_control
        goal.trajectory.points[0].time_from_start = rospy.Duration(0.05)
        # 一阶速度积分得到位置
        velocities = np.array(goal.trajectory.points[0].velocities)
        time_sec = goal.trajectory.points[0].time_from_start.to_sec()
        goal.trajectory.points[0].positions = joint_states.position[:6] + velocities * time_sec
        
        # 发布关节轨迹
        self.client.send_goal(goal)
        self.client.wait_for_result()
        self.gripper_pub.publish(gripper_control)

        rospy.sleep(0.05)  # 给ROS一些时间来执行命令

        done, info = self.get_done_and_info()
        truncated = False  # 示例: 如果你的环境没有时间限制，可以设置为 False
        return self.get_obs(), self.get_reward(), done, truncated, info

    def close(self):
        """
        Close the env.
        """
        # 关闭环境时执行必要的清理操作
        pass

    def get_distance_from_tip(self) -> float:
        """
        Get distance between tip and target object
        Args:
            object_position (np.ndarray): position of the target object

        Returns:
            (float): distance
        """
        # 获取 base_link 到 wrist_3_link 的变换
        transform = self.tf_buffer.lookup_transform('wrist_3_link', 'base_link', rospy.Time(0), rospy.Duration(1.0))

        point_wrist_3_link = do_transform_point(self.target, transform)
        distance = math.sqrt(
            point_wrist_3_link.point.x ** 2 + point_wrist_3_link.point.y ** 2 + point_wrist_3_link.point.z ** 2
        )
        return distance

    def get_robot_state(self) -> List[float]:
        """
        Get the robot state.
        The robot state contains the robot arm state and the gripper state.
        The robot arm state contains positions of arm joints and velocities of arm joints.
        The gripper state contains mean of open amount of gripper and mean of velocities of gripper joints.
        Returns:
            (list) : robot state
        """
        if self.current_joint_states is None:
            return [0.0] * 14

        arm_joint_positions = self.current_joint_states.position[:6]
        arm_joint_velocities = self.current_joint_states.velocity[:6]
        gripper_position = self.current_joint_states.position[-1]
        gripper_velocity = self.current_joint_states.velocity[-1]
        
        robot_state = list(arm_joint_positions)
        robot_state.extend(arm_joint_velocities)
        robot_state.append(gripper_position)
        robot_state.append(gripper_velocity)
        return robot_state

   
   
