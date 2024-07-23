; Auto-generated. Do not edit!


(cl:in-package cartesian_control_msgs-msg)


;//! \htmlinclude CartesianPosture.msg.html

(cl:defclass <CartesianPosture> (roslisp-msg-protocol:ros-message)
  ((posture_joint_names
    :reader posture_joint_names
    :initarg :posture_joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (posture_joint_values
    :reader posture_joint_values
    :initarg :posture_joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CartesianPosture (<CartesianPosture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianPosture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianPosture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartesian_control_msgs-msg:<CartesianPosture> is deprecated: use cartesian_control_msgs-msg:CartesianPosture instead.")))

(cl:ensure-generic-function 'posture_joint_names-val :lambda-list '(m))
(cl:defmethod posture_joint_names-val ((m <CartesianPosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:posture_joint_names-val is deprecated.  Use cartesian_control_msgs-msg:posture_joint_names instead.")
  (posture_joint_names m))

(cl:ensure-generic-function 'posture_joint_values-val :lambda-list '(m))
(cl:defmethod posture_joint_values-val ((m <CartesianPosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartesian_control_msgs-msg:posture_joint_values-val is deprecated.  Use cartesian_control_msgs-msg:posture_joint_values instead.")
  (posture_joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianPosture>) ostream)
  "Serializes a message object of type '<CartesianPosture>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'posture_joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'posture_joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'posture_joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'posture_joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianPosture>) istream)
  "Deserializes a message object of type '<CartesianPosture>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'posture_joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'posture_joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'posture_joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'posture_joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianPosture>)))
  "Returns string type for a message object of type '<CartesianPosture>"
  "cartesian_control_msgs/CartesianPosture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianPosture)))
  "Returns string type for a message object of type 'CartesianPosture"
  "cartesian_control_msgs/CartesianPosture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianPosture>)))
  "Returns md5sum for a message object of type '<CartesianPosture>"
  "fd61b7ee575c3e6d2dc191be6b741ff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianPosture)))
  "Returns md5sum for a message object of type 'CartesianPosture"
  "fd61b7ee575c3e6d2dc191be6b741ff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianPosture>)))
  "Returns full string definition for message of type '<CartesianPosture>"
  (cl:format cl:nil "# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianPosture)))
  "Returns full string definition for message of type 'CartesianPosture"
  (cl:format cl:nil "# Posture joint names may reflect a subset of all available joints (empty posture definitions are~%# also possible). The length of posture_joint_names and posture_joint_values have to be equal.~%~%string[] posture_joint_names~%float64[] posture_joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianPosture>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'posture_joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'posture_joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianPosture>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianPosture
    (cl:cons ':posture_joint_names (posture_joint_names msg))
    (cl:cons ':posture_joint_values (posture_joint_values msg))
))
