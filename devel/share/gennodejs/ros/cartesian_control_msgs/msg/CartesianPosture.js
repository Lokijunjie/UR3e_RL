// Auto-generated. Do not edit!

// (in-package cartesian_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CartesianPosture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posture_joint_names = null;
      this.posture_joint_values = null;
    }
    else {
      if (initObj.hasOwnProperty('posture_joint_names')) {
        this.posture_joint_names = initObj.posture_joint_names
      }
      else {
        this.posture_joint_names = [];
      }
      if (initObj.hasOwnProperty('posture_joint_values')) {
        this.posture_joint_values = initObj.posture_joint_values
      }
      else {
        this.posture_joint_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianPosture
    // Serialize message field [posture_joint_names]
    bufferOffset = _arraySerializer.string(obj.posture_joint_names, buffer, bufferOffset, null);
    // Serialize message field [posture_joint_values]
    bufferOffset = _arraySerializer.float64(obj.posture_joint_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianPosture
    let len;
    let data = new CartesianPosture(null);
    // Deserialize message field [posture_joint_names]
    data.posture_joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [posture_joint_values]
    data.posture_joint_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.posture_joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.posture_joint_values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_control_msgs/CartesianPosture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd61b7ee575c3e6d2dc191be6b741ff0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CartesianPosture(null);
    if (msg.posture_joint_names !== undefined) {
      resolved.posture_joint_names = msg.posture_joint_names;
    }
    else {
      resolved.posture_joint_names = []
    }

    if (msg.posture_joint_values !== undefined) {
      resolved.posture_joint_values = msg.posture_joint_values;
    }
    else {
      resolved.posture_joint_values = []
    }

    return resolved;
    }
};

module.exports = CartesianPosture;
