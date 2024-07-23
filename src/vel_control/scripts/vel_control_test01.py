#!/usr/bin/python
# -*- coding: utf-8 -*-

# 参考  https://blog.csdn.net/fengyu19930920/article/details/81144042

from trajectory_msgs.msg import *
from control_msgs.msg import *
import rospy
import actionlib
from sensor_msgs.msg import JointState
import numpy as np

JOINT_NAMES = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint',
               'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']
INIT_POS = [0,-np.pi/2,0,-np.pi/2,0,0] 
def move():
    # goal就是我们向发送的关节运动数据，实例化为FollowJointTrajectoryGoal()类
    goal = FollowJointTrajectoryGoal()

    # goal当中的trajectory就是我们要操作的，其余的Header之类的不用管
    goal.trajectory = JointTrajectory()
    # goal.trajectory底下一共还有两个成员，分别是joint_names和points，先给joint_names赋值
    goal.trajectory.joint_names = JOINT_NAMES

    # 从joint_state话题上获取当前的关节角度值，因为后续要移动关节时第一个值要为当前的角度值
    joint_states = rospy.wait_for_message("joint_states", JointState)
    joints_pos = joint_states.position

    # 给trajectory中的第二个成员points赋值
    # points中有四个变量，positions, velocities, accelerations, effort，我们给前三个中的全部或者其中一两个赋值就行了
    goal.trajectory.points = [JointTrajectoryPoint() for _ in range(2)]
    
    # 设置起始点，保持当前位置
    goal.trajectory.points[0].positions = joints_pos
    goal.trajectory.points[0].velocities = [0]*6
    goal.trajectory.points[0].time_from_start = rospy.Duration(0.0)

    # 设置目标速度，保持相同的位置
    
    goal.trajectory.points[1].velocities = [0.5]*6  # 设置目标速度
    goal.trajectory.points[1].time_from_start = rospy.Duration(0.5)
    
    velocities = np.array(goal.trajectory.points[1].velocities)
    time_sec = goal.trajectory.points[1].time_from_start.to_sec()

    # 更新 positions
    goal.trajectory.points[1].positions = joints_pos - velocities * time_sec

    # 发布goal，注意这里的client还没有实例化，ros节点也没有初始化，我们在后面的程序中进行如上操作
    client.send_goal(goal)
    client.wait_for_result()
 
def pub_test():
    global client

    #初始化ros节点
    rospy.init_node("pub_action_test")

    #实例化一个action的类，命名为client，与上述client对应，话题为arm_controller/follow_joint_trajectory，消息类型为FollowJointTrajectoryAction
    client = actionlib.SimpleActionClient('/pos_joint_traj_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
    print("Waiting for server...")
    #等待server
    client.wait_for_server()
    print("Connect to server")

    #执行move函数，发布action
    move()
 
if __name__ == "__main__":
    pub_test()
