// Auto-generated. Do not edit!

// (in-package cartesian_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CartesianTolerance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_error = null;
      this.orientation_error = null;
      this.twist_error = null;
      this.acceleration_error = null;
    }
    else {
      if (initObj.hasOwnProperty('position_error')) {
        this.position_error = initObj.position_error
      }
      else {
        this.position_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('orientation_error')) {
        this.orientation_error = initObj.orientation_error
      }
      else {
        this.orientation_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('twist_error')) {
        this.twist_error = initObj.twist_error
      }
      else {
        this.twist_error = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration_error')) {
        this.acceleration_error = initObj.acceleration_error
      }
      else {
        this.acceleration_error = new geometry_msgs.msg.Accel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianTolerance
    // Serialize message field [position_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position_error, buffer, bufferOffset);
    // Serialize message field [orientation_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.orientation_error, buffer, bufferOffset);
    // Serialize message field [twist_error]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist_error, buffer, bufferOffset);
    // Serialize message field [acceleration_error]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.acceleration_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianTolerance
    let len;
    let data = new CartesianTolerance(null);
    // Deserialize message field [position_error]
    data.position_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_error]
    data.orientation_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_error]
    data.twist_error = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_error]
    data.acceleration_error = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_control_msgs/CartesianTolerance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af7b81a920293904e6a5480495adb8d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 position_error
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CartesianTolerance(null);
    if (msg.position_error !== undefined) {
      resolved.position_error = geometry_msgs.msg.Vector3.Resolve(msg.position_error)
    }
    else {
      resolved.position_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.orientation_error !== undefined) {
      resolved.orientation_error = geometry_msgs.msg.Vector3.Resolve(msg.orientation_error)
    }
    else {
      resolved.orientation_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.twist_error !== undefined) {
      resolved.twist_error = geometry_msgs.msg.Twist.Resolve(msg.twist_error)
    }
    else {
      resolved.twist_error = new geometry_msgs.msg.Twist()
    }

    if (msg.acceleration_error !== undefined) {
      resolved.acceleration_error = geometry_msgs.msg.Accel.Resolve(msg.acceleration_error)
    }
    else {
      resolved.acceleration_error = new geometry_msgs.msg.Accel()
    }

    return resolved;
    }
};

module.exports = CartesianTolerance;
