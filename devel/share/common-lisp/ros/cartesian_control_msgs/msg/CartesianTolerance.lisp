; Auto-generated. Do not edit!


(cl:in-package cartesian_control_msgs-msg)


;//! \htmlinclude CartesianTolerance.msg.html

(cl:defclass <CartesianTolerance> (roslisp-msg-protocol:ros-message)
  ((position_error
    :reader position_error
    :initarg :position_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation_error
    :reader orientation_error
    :initarg :orientation_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (twist_error
    :reader twist_error
    :initarg :twist_error
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration_error
    :reader acceleration_error
    :initarg :acceleration_error
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel)))
)

(cl:defclass CartesianTolerance (<CartesianTolerance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianTolerance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianTolerance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_control_msgs-msg:<CartesianTolerance> is deprecated: use cartesian_control_msgs-msg:CartesianTolerance instead.")))

(cl:ensure-generic-function 'position_error-val :lambda-list '(m))
(cl:defmethod position_error-val ((m <CartesianTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:position_error-val is deprecated.  Use cartesian_control_msgs-msg:position_error instead.")
  (position_error m))

(cl:ensure-generic-function 'orientation_error-val :lambda-list '(m))
(cl:defmethod orientation_error-val ((m <CartesianTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:orientation_error-val is deprecated.  Use cartesian_control_msgs-msg:orientation_error instead.")
  (orientation_error m))

(cl:ensure-generic-function 'twist_error-val :lambda-list '(m))
(cl:defmethod twist_error-val ((m <CartesianTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:twist_error-val is deprecated.  Use cartesian_control_msgs-msg:twist_error instead.")
  (twist_error m))

(cl:ensure-generic-function 'acceleration_error-val :lambda-list '(m))
(cl:defmethod acceleration_error-val ((m <CartesianTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:acceleration_error-val is deprecated.  Use cartesian_control_msgs-msg:acceleration_error instead.")
  (acceleration_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianTolerance>) ostream)
  "Serializes a message object of type '<CartesianTolerance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianTolerance>) istream)
  "Deserializes a message object of type '<CartesianTolerance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianTolerance>)))
  "Returns string type for a message object of type '<CartesianTolerance>"
  "cartesian_control_msgs/CartesianTolerance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianTolerance)))
  "Returns string type for a message object of type 'CartesianTolerance"
  "cartesian_control_msgs/CartesianTolerance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianTolerance>)))
  "Returns md5sum for a message object of type '<CartesianTolerance>"
  "af7b81a920293904e6a5480495adb8d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianTolerance)))
  "Returns md5sum for a message object of type 'CartesianTolerance"
  "af7b81a920293904e6a5480495adb8d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianTolerance>)))
  "Returns full string definition for message of type '<CartesianTolerance>"
  (cl:format cl:nil "geometry_msgs/Vector3 position_error~%geometry_msgs/Vector3 orientation_error~%geometry_msgs/Twist twist_error~%geometry_msgs/Accel acceleration_error~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianTolerance)))
  "Returns full string definition for message of type 'CartesianTolerance"
  (cl:format cl:nil "geometry_msgs/Vector3 position_error~%geometry_msgs/Vector3 orientation_error~%geometry_msgs/Twist twist_error~%geometry_msgs/Accel acceleration_error~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianTolerance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianTolerance>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianTolerance
    (cl:cons ':position_error (position_error msg))
    (cl:cons ':orientation_error (orientation_error msg))
    (cl:cons ':twist_error (twist_error msg))
    (cl:cons ':acceleration_error (acceleration_error msg))
))
