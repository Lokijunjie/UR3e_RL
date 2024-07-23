; Auto-generated. Do not edit!


(cl:in-package cartesian_control_msgs-msg)


;//! \htmlinclude FollowCartesianTrajectoryGoal.msg.html

(cl:defclass <FollowCartesianTrajectoryGoal> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type cartesian_control_msgs-msg:CartesianTrajectory
    :initform (cl:make-instance 'cartesian_control_msgs-msg:CartesianTrajectory))
   (path_tolerance
    :reader path_tolerance
    :initarg :path_tolerance
    :type cartesian_control_msgs-msg:CartesianTolerance
    :initform (cl:make-instance 'cartesian_control_msgs-msg:CartesianTolerance))
   (goal_tolerance
    :reader goal_tolerance
    :initarg :goal_tolerance
    :type cartesian_control_msgs-msg:CartesianTolerance
    :initform (cl:make-instance 'cartesian_control_msgs-msg:CartesianTolerance))
   (goal_time_tolerance
    :reader goal_time_tolerance
    :initarg :goal_time_tolerance
    :type cl:real
    :initform 0))
)

(cl:defclass FollowCartesianTrajectoryGoal (<FollowCartesianTrajectoryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowCartesianTrajectoryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowCartesianTrajectoryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_control_msgs-msg:<FollowCartesianTrajectoryGoal> is deprecated: use cartesian_control_msgs-msg:FollowCartesianTrajectoryGoal instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <FollowCartesianTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:trajectory-val is deprecated.  Use cartesian_control_msgs-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'path_tolerance-val :lambda-list '(m))
(cl:defmethod path_tolerance-val ((m <FollowCartesianTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:path_tolerance-val is deprecated.  Use cartesian_control_msgs-msg:path_tolerance instead.")
  (path_tolerance m))

(cl:ensure-generic-function 'goal_tolerance-val :lambda-list '(m))
(cl:defmethod goal_tolerance-val ((m <FollowCartesianTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:goal_tolerance-val is deprecated.  Use cartesian_control_msgs-msg:goal_tolerance instead.")
  (goal_tolerance m))

(cl:ensure-generic-function 'goal_time_tolerance-val :lambda-list '(m))
(cl:defmethod goal_time_tolerance-val ((m <FollowCartesianTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:goal_time_tolerance-val is deprecated.  Use cartesian_control_msgs-msg:goal_time_tolerance instead.")
  (goal_time_tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowCartesianTrajectoryGoal>) ostream)
  "Serializes a message object of type '<FollowCartesianTrajectoryGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_tolerance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_tolerance) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'goal_time_tolerance)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'goal_time_tolerance) (cl:floor (cl:slot-value msg 'goal_time_tolerance)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowCartesianTrajectoryGoal>) istream)
  "Deserializes a message object of type '<FollowCartesianTrajectoryGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_tolerance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_tolerance) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_time_tolerance) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowCartesianTrajectoryGoal>)))
  "Returns string type for a message object of type '<FollowCartesianTrajectoryGoal>"
  "cartesian_control_msgs/FollowCartesianTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowCartesianTrajectoryGoal)))
  "Returns string type for a message object of type 'FollowCartesianTrajectoryGoal"
  "cartesian_control_msgs/FollowCartesianTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowCartesianTrajectoryGoal>)))
  "Returns md5sum for a message object of type '<FollowCartesianTrajectoryGoal>"
  "53c6564a309cf1d1f2d2c4e0478a40b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowCartesianTrajectoryGoal)))
  "Returns md5sum for a message object of type 'FollowCartesianTrajectoryGoal"
  "53c6564a309cf1d1f2d2c4e0478a40b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowCartesianTrajectoryGoal>)))
  "Returns full string definition for message of type '<FollowCartesianTrajectoryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%CartesianTrajectory trajectory~%CartesianTolerance path_tolerance~%CartesianTolerance goal_tolerance~%duration goal_time_tolerance~%~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTrajectory~%# header.frame_id is the frame in which all data from CartesianTrajectoryPoint[] is given~%Header header~%CartesianTrajectoryPoint[] points~%string controlled_frame~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTrajectoryPoint~%duration time_from_start~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel acceleration~%# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137~%geometry_msgs/Accel jerk~%CartesianPosture posture~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianPosture~%# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTolerance~%geometry_msgs/Vector3 position_error~%geometry_msgs/Vector3 orientation_error~%geometry_msgs/Twist twist_error~%geometry_msgs/Accel acceleration_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowCartesianTrajectoryGoal)))
  "Returns full string definition for message of type 'FollowCartesianTrajectoryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%CartesianTrajectory trajectory~%CartesianTolerance path_tolerance~%CartesianTolerance goal_tolerance~%duration goal_time_tolerance~%~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTrajectory~%# header.frame_id is the frame in which all data from CartesianTrajectoryPoint[] is given~%Header header~%CartesianTrajectoryPoint[] points~%string controlled_frame~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTrajectoryPoint~%duration time_from_start~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Accel acceleration~%# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137~%geometry_msgs/Accel jerk~%CartesianPosture posture~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianPosture~%# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%================================================================================~%MSG: cartesian_control_msgs/CartesianTolerance~%geometry_msgs/Vector3 position_error~%geometry_msgs/Vector3 orientation_error~%geometry_msgs/Twist twist_error~%geometry_msgs/Accel acceleration_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowCartesianTrajectoryGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_tolerance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_tolerance))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowCartesianTrajectoryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowCartesianTrajectoryGoal
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':path_tolerance (path_tolerance msg))
    (cl:cons ':goal_tolerance (goal_tolerance msg))
    (cl:cons ':goal_time_tolerance (goal_time_tolerance msg))
))
