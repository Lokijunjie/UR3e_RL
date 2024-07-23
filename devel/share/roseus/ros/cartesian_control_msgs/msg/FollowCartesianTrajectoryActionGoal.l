;; Auto-generated. Do not edit!


(when (boundp 'cartesian_control_msgs::FollowCartesianTrajectoryActionGoal)
  (if (not (find-package "CARTESIAN_CONTROL_MSGS"))
    (make-package "CARTESIAN_CONTROL_MSGS"))
  (shadow 'FollowCartesianTrajectoryActionGoal (find-package "CARTESIAN_CONTROL_MSGS")))
(unless (find-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYACTIONGOAL")
  (make-package "CARTESIAN_CONTROL_MSGS::FOLLOWCARTESIANTRAJECTORYACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude FollowCartesianTrajectoryActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cartesian_control_msgs::FollowCartesianTrajectoryActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod cartesian_control_msgs::FollowCartesianTrajectoryActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance cartesian_control_msgs::FollowCartesianTrajectoryGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; cartesian_control_msgs/FollowCartesianTrajectoryGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; cartesian_control_msgs/FollowCartesianTrajectoryGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; cartesian_control_msgs/FollowCartesianTrajectoryGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_control_msgs::FollowCartesianTrajectoryActionGoal :md5sum-) "4056d334183d6e78f45b035350ac6b04")
(setf (get cartesian_control_msgs::FollowCartesianTrajectoryActionGoal :datatype-) "cartesian_control_msgs/FollowCartesianTrajectoryActionGoal")
(setf (get cartesian_control_msgs::FollowCartesianTrajectoryActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
FollowCartesianTrajectoryGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: cartesian_control_msgs/FollowCartesianTrajectoryGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
CartesianTrajectory trajectory
CartesianTolerance path_tolerance
CartesianTolerance goal_tolerance
duration goal_time_tolerance


================================================================================
MSG: cartesian_control_msgs/CartesianTrajectory
# header.frame_id is the frame in which all data from CartesianTrajectoryPoint[] is given
Header header
CartesianTrajectoryPoint[] points
string controlled_frame

================================================================================
MSG: cartesian_control_msgs/CartesianTrajectoryPoint
duration time_from_start
geometry_msgs/Pose pose
geometry_msgs/Twist twist
geometry_msgs/Accel acceleration
# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137
geometry_msgs/Accel jerk
CartesianPosture posture

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: cartesian_control_msgs/CartesianPosture
# Posture joint names may reflect a subset of all available joints (empty posture definitions are
# also possible). The length of posture_joint_names and posture_joint_values have to be equal.

string[] posture_joint_names
float64[] posture_joint_values

================================================================================
MSG: cartesian_control_msgs/CartesianTolerance
geometry_msgs/Vector3 position_error
geometry_msgs/Vector3 orientation_error
geometry_msgs/Twist twist_error
geometry_msgs/Accel acceleration_error

")



(provide :cartesian_control_msgs/FollowCartesianTrajectoryActionGoal "4056d334183d6e78f45b035350ac6b04")

