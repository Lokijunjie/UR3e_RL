// Auto-generated. Do not edit!

// (in-package cartesian_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CartesianPosture = require('./CartesianPosture.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CartesianTrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_from_start = null;
      this.pose = null;
      this.twist = null;
      this.acceleration = null;
      this.jerk = null;
      this.posture = null;
    }
    else {
      if (initObj.hasOwnProperty('time_from_start')) {
        this.time_from_start = initObj.time_from_start
      }
      else {
        this.time_from_start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('jerk')) {
        this.jerk = initObj.jerk
      }
      else {
        this.jerk = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('posture')) {
        this.posture = initObj.posture
      }
      else {
        this.posture = new CartesianPosture();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianTrajectoryPoint
    // Serialize message field [time_from_start]
    bufferOffset = _serializer.duration(obj.time_from_start, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [jerk]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.jerk, buffer, bufferOffset);
    // Serialize message field [posture]
    bufferOffset = CartesianPosture.serialize(obj.posture, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianTrajectoryPoint
    let len;
    let data = new CartesianTrajectoryPoint(null);
    // Deserialize message field [time_from_start]
    data.time_from_start = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [jerk]
    data.jerk = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [posture]
    data.posture = CartesianPosture.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CartesianPosture.getMessageSize(object.posture);
    return length + 208;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_control_msgs/CartesianTrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02d556067c148166af2dabae6251c00f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CartesianTrajectoryPoint(null);
    if (msg.time_from_start !== undefined) {
      resolved.time_from_start = msg.time_from_start;
    }
    else {
      resolved.time_from_start = {secs: 0, nsecs: 0}
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Accel.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Accel()
    }

    if (msg.jerk !== undefined) {
      resolved.jerk = geometry_msgs.msg.Accel.Resolve(msg.jerk)
    }
    else {
      resolved.jerk = new geometry_msgs.msg.Accel()
    }

    if (msg.posture !== undefined) {
      resolved.posture = CartesianPosture.Resolve(msg.posture)
    }
    else {
      resolved.posture = new CartesianPosture()
    }

    return resolved;
    }
};

module.exports = CartesianTrajectoryPoint;
