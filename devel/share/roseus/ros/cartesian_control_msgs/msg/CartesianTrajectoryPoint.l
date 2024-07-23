;; Auto-generated. Do not edit!


(when (boundp 'cartesian_control_msgs::CartesianTrajectoryPoint)
  (if (not (find-package "CARTESIAN_CONTROL_MSGS"))
    (make-package "CARTESIAN_CONTROL_MSGS"))
  (shadow 'CartesianTrajectoryPoint (find-package "CARTESIAN_CONTROL_MSGS")))
(unless (find-package "CARTESIAN_CONTROL_MSGS::CARTESIANTRAJECTORYPOINT")
  (make-package "CARTESIAN_CONTROL_MSGS::CARTESIANTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude CartesianTrajectoryPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartesian_control_msgs::CartesianTrajectoryPoint
  :super ros::object
  :slots (_time_from_start _pose _twist _acceleration _jerk _posture ))

(defmethod cartesian_control_msgs::CartesianTrajectoryPoint
  (:init
   (&key
    ((:time_from_start __time_from_start) (instance ros::time :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Accel :init))
    ((:jerk __jerk) (instance geometry_msgs::Accel :init))
    ((:posture __posture) (instance cartesian_control_msgs::CartesianPosture :init))
    )
   (send-super :init)
   (setq _time_from_start __time_from_start)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _acceleration __acceleration)
   (setq _jerk __jerk)
   (setq _posture __posture)
   self)
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:posture
   (&rest __posture)
   (if (keywordp (car __posture))
       (send* _posture __posture)
     (progn
       (if __posture (setq _posture (car __posture)))
       _posture)))
  (:serialization-length
   ()
   (+
    ;; duration _time_from_start
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; geometry_msgs/Accel _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Accel _jerk
    (send _jerk :serialization-length)
    ;; cartesian_control_msgs/CartesianPosture _posture
    (send _posture :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; geometry_msgs/Accel _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Accel _jerk
       (send _jerk :serialize s)
     ;; cartesian_control_msgs/CartesianPosture _posture
       (send _posture :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; geometry_msgs/Accel _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Accel _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; cartesian_control_msgs/CartesianPosture _posture
     (send _posture :deserialize buf ptr-) (incf ptr- (send _posture :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_control_msgs::CartesianTrajectoryPoint :md5sum-) "02d556067c148166af2dabae6251c00f")
(setf (get cartesian_control_msgs::CartesianTrajectoryPoint :datatype-) "cartesian_control_msgs/CartesianTrajectoryPoint")
(setf (get cartesian_control_msgs::CartesianTrajectoryPoint :definition-)
      "duration time_from_start
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



(provide :cartesian_control_msgs/CartesianTrajectoryPoint "02d556067c148166af2dabae6251c00f")


