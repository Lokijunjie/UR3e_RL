; Auto-generated. Do not edit!


(cl:in-package cartesian_control_msgs-msg)


;//! \htmlinclude FollowCartesianTrajectoryFeedback.msg.html

(cl:defclass <FollowCartesianTrajectoryFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (controlled_frame
    :reader controlled_frame
    :initarg :controlled_frame
    :type cl:string
    :initform "")
   (desired
    :reader desired
    :initarg :desired
    :type cartesian_control_msgs-msg:CartesianTrajectoryPoint
    :initform (cl:make-instance 'cartesian_control_msgs-msg:CartesianTrajectoryPoint))
   (actual
    :reader actual
    :initarg :actual
    :type cartesian_control_msgs-msg:CartesianTrajectoryPoint
    :initform (cl:make-instance 'cartesian_control_msgs-msg:CartesianTrajectoryPoint))
   (error
    :reader error
    :initarg :error
    :type cartesian_control_msgs-msg:CartesianTrajectoryPoint
    :initform (cl:make-instance 'cartesian_control_msgs-msg:CartesianTrajectoryPoint)))
)

(cl:defclass FollowCartesianTrajectoryFeedback (<FollowCartesianTrajectoryFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowCartesianTrajectoryFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowCartesianTrajectoryFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_control_msgs-msg:<FollowCartesianTrajectoryFeedback> is deprecated: use cartesian_control_msgs-msg:FollowCartesianTrajectoryFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowCartesianTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:header-val is deprecated.  Use cartesian_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'controlled_frame-val :lambda-list '(m))
(cl:defmethod controlled_frame-val ((m <FollowCartesianTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:controlled_frame-val is deprecated.  Use cartesian_control_msgs-msg:controlled_frame instead.")
  (controlled_frame m))

(cl:ensure-generic-function 'desired-val :lambda-list '(m))
(cl:defmethod desired-val ((m <FollowCartesianTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:desired-val is deprecated.  Use cartesian_control_msgs-msg:desired instead.")
  (desired m))

(cl:ensure-generic-function 'actual-val :lambda-list '(m))
(cl:defmethod actual-val ((m <FollowCartesianTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:actual-val is deprecated.  Use cartesian_control_msgs-msg:actual instead.")
  (actual m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <FollowCartesianTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:error-val is deprecated.  Use cartesian_control_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowCartesianTrajectoryFeedback>) ostream)
  "Serializes a message object of type '<FollowCartesianTrajectoryFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controlled_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controlled_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowCartesianTrajectoryFeedback>) istream)
  "Deserializes a message object of type '<FollowCartesianTrajectoryFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controlled_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controlled_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowCartesianTrajectoryFeedback>)))
  "Returns string type for a message object of type '<FollowCartesianTrajectoryFeedback>"
  "cartesian_control_msgs/FollowCartesianTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowCartesianTrajectoryFeedback)))
  "Returns string type for a message object of type 'FollowCartesianTrajectoryFeedback"
  "cartesian_control_msgs/FollowCartesianTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowCartesianTrajectoryFeedback>)))
  "Returns md5sum for a message object of type '<FollowCartesianTrajectoryFeedback>"
  "f58bb97e9d51288ac02f719ac397cb6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowCartesianTrajectoryFeedback)))
  "Returns md5sum for a message object of type 'FollowCartesianTrajectoryFeedback"
  "f58bb97e9d51288ac02f719ac397cb6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowCartesianTrajectoryFeedback>)))
  "Returns full string definition for message of type '<FollowCartesianTrajectoryFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%string controlled_frame~%CartesianTrajectoryPoint desired~%CartesianTrajectoryPoint actual~%CartesianTrajectoryPoint error~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTrajectoryPoint~%duration time_from_start~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel acceleration~%# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137~%geometry_msgs/Accel jerk~%CartesianPosture posture~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianPosture~%# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowCartesianTrajectoryFeedback)))
  "Returns full string definition for message of type 'FollowCartesianTrajectoryFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%string controlled_frame~%CartesianTrajectoryPoint desired~%CartesianTrajectoryPoint actual~%CartesianTrajectoryPoint error~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTrajectoryPoint~%duration time_from_start~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel acceleration~%# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137~%geometry_msgs/Accel jerk~%CartesianPosture posture~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianPosture~%# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowCartesianTrajectoryFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'controlled_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowCartesianTrajectoryFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowCartesianTrajectoryFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':controlled_frame (controlled_frame msg))
    (cl:cons ':desired (desired msg))
    (cl:cons ':actual (actual msg))
    (cl:cons ':error (error msg))
))
