// Auto-generated. Do not edit!

// (in-package ur_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetPayloadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mass = null;
      this.center_of_gravity = null;
    }
    else {
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('center_of_gravity')) {
        this.center_of_gravity = initObj.center_of_gravity
      }
      else {
        this.center_of_gravity = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPayloadRequest
    // Serialize message field [mass]
    bufferOffset = _serializer.float32(obj.mass, buffer, bufferOffset);
    // Serialize message field [center_of_gravity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.center_of_gravity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPayloadRequest
    let len;
    let data = new SetPayloadRequest(null);
    // Deserialize message field [mass]
    data.mass = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center_of_gravity]
    data.center_of_gravity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_msgs/SetPayloadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a2cd594b640cc49946d268b22a837bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 mass
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPayloadRequest(null);
    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.center_of_gravity !== undefined) {
      resolved.center_of_gravity = geometry_msgs.msg.Vector3.Resolve(msg.center_of_gravity)
    }
    else {
      resolved.center_of_gravity = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

class SetPayloadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPayloadResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPayloadResponse
    let len;
    let data = new SetPayloadResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_msgs/SetPayloadResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPayloadResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetPayloadRequest,
  Response: SetPayloadResponse,
  md5sum() { return '3e3a97c1edb6d0acdd0d0c9e9e4a538a'; },
  datatype() { return 'ur_msgs/SetPayload'; }
};
