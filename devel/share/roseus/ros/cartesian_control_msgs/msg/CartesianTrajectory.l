;; Auto-generated. Do not edit!


(when (boundp 'cartesian_control_msgs::CartesianTrajectory)
  (if (not (find-package "CARTESIAN_CONTROL_MSGS"))
    (make-package "CARTESIAN_CONTROL_MSGS"))
  (shadow 'CartesianTrajectory (find-package "CARTESIAN_CONTROL_MSGS")))
(unless (find-package "CARTESIAN_CONTROL_MSGS::CARTESIANTRAJECTORY")
  (make-package "CARTESIAN_CONTROL_MSGS::CARTESIANTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude CartesianTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cartesian_control_msgs::CartesianTrajectory
  :super ros::object
  :slots (_header _points _controlled_frame ))

(defmethod cartesian_control_msgs::CartesianTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) ())
    ((:controlled_frame __controlled_frame) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   (setq _controlled_frame (string __controlled_frame))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:controlled_frame
   (&optional __controlled_frame)
   (if __controlled_frame (setq _controlled_frame __controlled_frame)) _controlled_frame)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cartesian_control_msgs/CartesianTrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; string _controlled_frame
    4 (length _controlled_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cartesian_control_msgs/CartesianTrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; string _controlled_frame
       (write-long (length _controlled_frame) s) (princ _controlled_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cartesian_control_msgs/CartesianTrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance cartesian_control_msgs::CartesianTrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _controlled_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controlled_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cartesian_control_msgs::CartesianTrajectory :md5sum-) "fe1b5791fdbc25aca5939664297d26be")
(setf (get cartesian_control_msgs::CartesianTrajectory :datatype-) "cartesian_control_msgs/CartesianTrajectory")
(setf (get cartesian_control_msgs::CartesianTrajectory :definition-)
      "# header.frame_id is the frame in which all data from CartesianTrajectoryPoint[] is given
Header header
CartesianTrajectoryPoint[] points
string controlled_frame

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

")



(provide :cartesian_control_msgs/CartesianTrajectory "fe1b5791fdbc25aca5939664297d26be")


