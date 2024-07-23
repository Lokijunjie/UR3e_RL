; Auto-generated. Do not edit!


(cl:in-package cartesian_control_msgs-msg)


;//! \htmlinclude CartesianTrajectoryPoint.msg.html

(cl:defclass <CartesianTrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((time_from_start
    :reader time_from_start
    :initarg :time_from_start
    :type cl:real
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (jerk
    :reader jerk
    :initarg :jerk
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (posture
    :reader posture
    :initarg :posture
    :type cartesian_control_msgs-msg:CartesianPosture
    :initform (cl:make-instance 'cartesian_control_msgs-msg:CartesianPosture)))
)

(cl:defclass CartesianTrajectoryPoint (<CartesianTrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianTrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianTrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_control_msgs-msg:<CartesianTrajectoryPoint> is deprecated: use cartesian_control_msgs-msg:CartesianTrajectoryPoint instead.")))

(cl:ensure-generic-function 'time_from_start-val :lambda-list '(m))
(cl:defmethod time_from_start-val ((m <CartesianTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:time_from_start-val is deprecated.  Use cartesian_control_msgs-msg:time_from_start instead.")
  (time_from_start m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CartesianTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:pose-val is deprecated.  Use cartesian_control_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <CartesianTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:twist-val is deprecated.  Use cartesian_control_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <CartesianTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:acceleration-val is deprecated.  Use cartesian_control_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <CartesianTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:jerk-val is deprecated.  Use cartesian_control_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'posture-val :lambda-list '(m))
(cl:defmethod posture-val ((m <CartesianTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:posture-val is deprecated.  Use cartesian_control_msgs-msg:posture instead.")
  (posture m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianTrajectoryPoint>) ostream)
  "Serializes a message object of type '<CartesianTrajectoryPoint>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_from_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_from_start) (cl:floor (cl:slot-value msg 'time_from_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posture) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianTrajectoryPoint>) istream)
  "Deserializes a message object of type '<CartesianTrajectoryPoint>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_from_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posture) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianTrajectoryPoint>)))
  "Returns string type for a message object of type '<CartesianTrajectoryPoint>"
  "cartesian_control_msgs/CartesianTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianTrajectoryPoint)))
  "Returns string type for a message object of type 'CartesianTrajectoryPoint"
  "cartesian_control_msgs/CartesianTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianTrajectoryPoint>)))
  "Returns md5sum for a message object of type '<CartesianTrajectoryPoint>"
  "02d556067c148166af2dabae6251c00f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianTrajectoryPoint)))
  "Returns md5sum for a message object of type 'CartesianTrajectoryPoint"
  "02d556067c148166af2dabae6251c00f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianTrajectoryPoint>)))
  "Returns full string definition for message of type '<CartesianTrajectoryPoint>"
  (cl:format cl:nil "duration time_from_start~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel acceleration~%# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137~%geometry_msgs/Accel jerk~%CartesianPosture posture~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianPosture~%# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianTrajectoryPoint)))
  "Returns full string definition for message of type 'CartesianTrajectoryPoint"
  (cl:format cl:nil "duration time_from_start~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel acceleration~%# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137~%geometry_msgs/Accel jerk~%CartesianPosture posture~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianPosture~%# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianTrajectoryPoint>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posture))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianTrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianTrajectoryPoint
    (cl:cons ':time_from_start (time_from_start msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':posture (posture msg))
))
