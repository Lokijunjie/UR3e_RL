;; Auto-generated. Do not edit!


(when (boundp 'ur_msgs::SetPayload)
  (if (not (find-package "UR_MSGS"))
    (make-package "UR_MSGS"))
  (shadow 'SetPayload (find-package "UR_MSGS")))
(unless (find-package "UR_MSGS::SETPAYLOAD")
  (make-package "UR_MSGS::SETPAYLOAD"))
(unless (find-package "UR_MSGS::SETPAYLOADREQUEST")
  (make-package "UR_MSGS::SETPAYLOADREQUEST"))
(unless (find-package "UR_MSGS::SETPAYLOADRESPONSE")
  (make-package "UR_MSGS::SETPAYLOADRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ur_msgs::SetPayloadRequest
  :super ros::object
  :slots (_mass _center_of_gravity ))

(defmethod ur_msgs::SetPayloadRequest
  (:init
   (&key
    ((:mass __mass) 0.0)
    ((:center_of_gravity __center_of_gravity) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _mass (float __mass))
   (setq _center_of_gravity __center_of_gravity)
   self)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:center_of_gravity
   (&rest __center_of_gravity)
   (if (keywordp (car __center_of_gravity))
       (send* _center_of_gravity __center_of_gravity)
     (progn
       (if __center_of_gravity (setq _center_of_gravity (car __center_of_gravity)))
       _center_of_gravity)))
  (:serialization-length
   ()
   (+
    ;; float32 _mass
    4
    ;; geometry_msgs/Vector3 _center_of_gravity
    (send _center_of_gravity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _center_of_gravity
       (send _center_of_gravity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _mass
     (setq _mass (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _center_of_gravity
     (send _center_of_gravity :deserialize buf ptr-) (incf ptr- (send _center_of_gravity :serialization-length))
   ;;
   self)
  )

(defclass ur_msgs::SetPayloadResponse
  :super ros::object
  :slots (_success ))

(defmethod ur_msgs::SetPayloadResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur_msgs::SetPayload
  :super ros::object
  :slots ())

(setf (get ur_msgs::SetPayload :md5sum-) "3e3a97c1edb6d0acdd0d0c9e9e4a538a")
(setf (get ur_msgs::SetPayload :datatype-) "ur_msgs/SetPayload")
(setf (get ur_msgs::SetPayload :request) ur_msgs::SetPayloadRequest)
(setf (get ur_msgs::SetPayload :response) ur_msgs::SetPayloadResponse)

(defmethod ur_msgs::SetPayloadRequest
  (:response () (instance ur_msgs::SetPayloadResponse :init)))

(setf (get ur_msgs::SetPayloadRequest :md5sum-) "3e3a97c1edb6d0acdd0d0c9e9e4a538a")
(setf (get ur_msgs::SetPayloadRequest :datatype-) "ur_msgs/SetPayloadRequest")
(setf (get ur_msgs::SetPayloadRequest :definition-)
      "float32 mass
geometry_msgs/Vector3 center_of_gravity

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
---
bool success

")

(setf (get ur_msgs::SetPayloadResponse :md5sum-) "3e3a97c1edb6d0acdd0d0c9e9e4a538a")
(setf (get ur_msgs::SetPayloadResponse :datatype-) "ur_msgs/SetPayloadResponse")
(setf (get ur_msgs::SetPayloadResponse :definition-)
      "float32 mass
geometry_msgs/Vector3 center_of_gravity

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
---
bool success

")



(provide :ur_msgs/SetPayload "3e3a97c1edb6d0acdd0d0c9e9e4a538a")


