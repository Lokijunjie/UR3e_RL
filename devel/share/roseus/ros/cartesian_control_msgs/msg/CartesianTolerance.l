;; Auto-generated. Do not edit!


(when (boundp 'cartesian_control_msgs::CartesianTolerance)
  (if (not (find-package "CARTESIAN_CONTROL_MSGS"))
    (make-package "CARTESIAN_CONTROL_MSGS"))
  (shadow 'CartesianTolerance (find-package "CARTESIAN_CONTROL_MSGS")))
(unless (find-package "CARTESIAN_CONTROL_MSGS::CARTESIANTOLERANCE")
  (make-package "CARTESIAN_CONTROL_MSGS::CARTESIANTOLERANCE"))

(in-package "ROS")
;;//! \htmlinclude CartesianTolerance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartesian_control_msgs::CartesianTolerance
  :super ros::object
  :slots (_position_error _orientation_error _twist_error _acceleration_error ))

(defmethod cartesian_control_msgs::CartesianTolerance
  (:init
   (&key
    ((:position_error __position_error) (instance geometry_msgs::Vector3 :init))
    ((:orientation_error __orientation_error) (instance geometry_msgs::Vector3 :init))
    ((:twist_error __twist_error) (instance geometry_msgs::Twist :init))
    ((:acceleration_error __acceleration_error) (instance geometry_msgs::Accel :init))
    )
   (send-super :init)
   (setq _position_error __position_error)
   (setq _orientation_error __orientation_error)
   (setq _twist_error __twist_error)
   (setq _acceleration_error __acceleration_error)
   self)
  (:position_error
   (&rest __position_error)
   (if (keywordp (car __position_error))
       (send* _position_error __position_error)
     (progn
       (if __position_error (setq _position_error (car __position_error)))
       _position_error)))
  (:orientation_error
   (&rest __orientation_error)
   (if (keywordp (car __orientation_error))
       (send* _orientation_error __orientation_error)
     (progn
       (if __orientation_error (setq _orientation_error (car __orientation_error)))
       _orientation_error)))
  (:twist_error
   (&rest __twist_error)
   (if (keywordp (car __twist_error))
       (send* _twist_error __twist_error)
     (progn
       (if __twist_error (setq _twist_error (car __twist_error)))
       _twist_error)))
  (:acceleration_error
   (&rest __acceleration_error)
   (if (keywordp (car __acceleration_error))
       (send* _acceleration_error __acceleration_error)
     (progn
       (if __acceleration_error (setq _acceleration_error (car __acceleration_error)))
       _acceleration_error)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _position_error
    (send _position_error :serialization-length)
    ;; geometry_msgs/Vector3 _orientation_error
    (send _orientation_error :serialization-length)
    ;; geometry_msgs/Twist _twist_error
    (send _twist_error :serialization-length)
    ;; geometry_msgs/Accel _acceleration_error
    (send _acceleration_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _position_error
       (send _position_error :serialize s)
     ;; geometry_msgs/Vector3 _orientation_error
       (send _orientation_error :serialize s)
     ;; geometry_msgs/Twist _twist_error
       (send _twist_error :serialize s)
     ;; geometry_msgs/Accel _acceleration_error
       (send _acceleration_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _position_error
     (send _position_error :deserialize buf ptr-) (incf ptr- (send _position_error :serialization-length))
   ;; geometry_msgs/Vector3 _orientation_error
     (send _orientation_error :deserialize buf ptr-) (incf ptr- (send _orientation_error :serialization-length))
   ;; geometry_msgs/Twist _twist_error
     (send _twist_error :deserialize buf ptr-) (incf ptr- (send _twist_error :serialization-length))
   ;; geometry_msgs/Accel _acceleration_error
     (send _acceleration_error :deserialize buf ptr-) (incf ptr- (send _acceleration_error :serialization-length))
   ;;
   self)
  )

(setf (get cartesian_control_msgs::CartesianTolerance :md5sum-) "af7b81a920293904e6a5480495adb8d1")
(setf (get cartesian_control_msgs::CartesianTolerance :datatype-) "cartesian_control_msgs/CartesianTolerance")
(setf (get cartesian_control_msgs::CartesianTolerance :definition-)
      "geometry_msgs/Vector3 position_error
geometry_msgs/Vector3 orientation_error
geometry_msgs/Twist twist_error
geometry_msgs/Accel acceleration_error

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :cartesian_control_msgs/CartesianTolerance "af7b81a920293904e6a5480495adb8d1")


