// Auto-generated. Do not edit!

// (in-package cartesian_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CartesianTrajectoryPoint = require('./CartesianTrajectoryPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CartesianTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.points = null;
      this.controlled_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('controlled_frame')) {
        this.controlled_frame = initObj.controlled_frame
      }
      else {
        this.controlled_frame = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = CartesianTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [controlled_frame]
    bufferOffset = _serializer.string(obj.controlled_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianTrajectory
    let len;
    let data = new CartesianTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = CartesianTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [controlled_frame]
    data.controlled_frame = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.points.forEach((val) => {
      length += CartesianTrajectoryPoint.getMessageSize(val);
    });
    length += _getByteLength(object.controlled_frame);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_control_msgs/CartesianTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe1b5791fdbc25aca5939664297d26be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # header.frame_id is the frame in which all data from CartesianTrajectoryPoint[] is given
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CartesianTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = CartesianTrajectoryPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.controlled_frame !== undefined) {
      resolved.controlled_frame = msg.controlled_frame;
    }
    else {
      resolved.controlled_frame = ''
    }

    return resolved;
    }
};

module.exports = CartesianTrajectory;
