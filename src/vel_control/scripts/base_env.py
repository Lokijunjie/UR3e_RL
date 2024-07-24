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
from geometry_msgs.msg import TransformStamped


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
        self.joint_traj_pub = rospy.Publisher('/arm_controller/command', JointTrajectory, queue_size=10)
        
        self.arm_joint_names = ["joint1", "joint2", "joint3", "joint4", "joint5", "joint6"]
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
        self.target_x_range = (0.2, 0.4)
        self.target_y_range = (-0.2, 0.2)
        self.target_z_range = (0.4, 0.7)

        self.reach_threshold = 0.01

        # Target position in base_link frame
        self.target_position = None

         # Initialize TF listener
        self.target_brodcast = tf2_ros.transform_broadcaster()
        self.tf_listener = tf2_ros.TransformListener()

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
        target_realtive_position = self.get_object_position_relative_to_base_link(
            self.target
        )
        obs.extend(target_realtive_position)
        return np.array(obs)

    def get_reward(self) -> float:
        """
        This reward function is based on the distance between target object and tip.
        Returns:
            (float) : reward
        """
        distance_between_tip_and_target = self.get_distance_from_tip(
            self.target.get_position()
        )
        return -math.log10(distance_between_tip_and_target / 10 + 1)


    def reset_objects(self):
        """
        Reset a target object.
        """
        tfs = TransformStamped()

        
        random_point_x = random.uniform(self.target_x_range[0], self.target_x_range[1])
        random_point_y = random.uniform(self.target_y_range[0], self.target_y_range[1])
        random_point_z = random.uniform(self.target_z_range[0], self.target_z_range[1])
        


    def is_goal_state(self) -> bool:
        """
        If the target object and the tip are close, it is considered as a goal state.
        """
        distance_between_tip_and_target = self.get_distance_from_tip(
            self.target.get_position()
        )
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

        traj = JointTrajectory()
        traj.joint_names = self.arm_joint_names
        joint_states = rospy.wait_for_message("joint_states", JointState)
        
        traj.points = [JointTrajectoryPoint()]
        traj.points[0].velocities = arm_control
        traj.points[0].time_from_start = rospy.Duration(0.002)
        # 一阶速度积分得到位置
        velocities = np.array(traj.points[0].velocities)
        time_sec = traj.points[0].time_from_start.to_sec()
        traj.points[0].positions = joint_states.position[:6] + velocities * time_sec
        
        self.joint_traj_pub.publish(traj)
        self.gripper_pub.publish(gripper_control)

        rospy.sleep(0.02)  # 给ROS一些时间来执行命令

        done, info = self.get_done_and_info()
        truncated = False  # 示例: 如果你的环境没有时间限制，可以设置为 False
        return self.get_obs(), self.get_reward(), done, truncated, info

    def close(self):
        """
        Close the env.
        """
        # 关闭环境时执行必要的清理操作
        pass

    def get_distance_from_tip(self, object_position: np.ndarray) -> float:
        """
        Get distance between tip and target object
        Args:
            object_position (np.ndarray): position of the target object

        Returns:
            (float): distance
        """
        raise NotImplementedError

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

    def get_object_position_relative_to_base_link(self, target_object: np.ndarray) -> np.ndarray:
        """
        Get relative position of the target object to robot arm base link.
        Args:
            target_object (Object): target object

        Returns:
            (np.ndarray): position array containing x, y, z
        """
        raise NotImplementedError
    
    def get_distance_to_base_link(self, target_point):
        try:
            self.tf_listener.waitForTransform('/base_link', target_point.header.frame_id, rospy.Time(0), rospy.Duration(4.0))
            base_link_to_target_point = self.tf_listener.transformPoint('/base_link', target_point)
            
            x = base_link_to_target_point.point.x
            y = base_link_to_target_point.point.y
            z = base_link_to_target_point.point.z

            distance = np.sqrt(x**2 + y**2 + z**2)
            return distance
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            rospy.logerr("Transform lookup failed.")
            return None
