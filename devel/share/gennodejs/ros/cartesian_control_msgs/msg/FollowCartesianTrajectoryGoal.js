// Auto-generated. Do not edit!

// (in-package cartesian_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CartesianTrajectory = require('./CartesianTrajectory.js');
let CartesianTolerance = require('./CartesianTolerance.js');

//-----------------------------------------------------------

class FollowCartesianTrajectoryGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory = null;
      this.path_tolerance = null;
      this.goal_tolerance = null;
      this.goal_time_tolerance = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new CartesianTrajectory();
      }
      if (initObj.hasOwnProperty('path_tolerance')) {
        this.path_tolerance = initObj.path_tolerance
      }
      else {
        this.path_tolerance = new CartesianTolerance();
      }
      if (initObj.hasOwnProperty('goal_tolerance')) {
        this.goal_tolerance = initObj.goal_tolerance
      }
      else {
        this.goal_tolerance = new CartesianTolerance();
      }
      if (initObj.hasOwnProperty('goal_time_tolerance')) {
        this.goal_time_tolerance = initObj.goal_time_tolerance
      }
      else {
        this.goal_time_tolerance = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowCartesianTrajectoryGoal
    // Serialize message field [trajectory]
    bufferOffset = CartesianTrajectory.serialize(obj.trajectory, buffer, bufferOffset);
    // Serialize message field [path_tolerance]
    bufferOffset = CartesianTolerance.serialize(obj.path_tolerance, buffer, bufferOffset);
    // Serialize message field [goal_tolerance]
    bufferOffset = CartesianTolerance.serialize(obj.goal_tolerance, buffer, bufferOffset);
    // Serialize message field [goal_time_tolerance]
    bufferOffset = _serializer.duration(obj.goal_time_tolerance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowCartesianTrajectoryGoal
    let len;
    let data = new FollowCartesianTrajectoryGoal(null);
    // Deserialize message field [trajectory]
    data.trajectory = CartesianTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_tolerance]
    data.path_tolerance = CartesianTolerance.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_tolerance]
    data.goal_tolerance = CartesianTolerance.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_time_tolerance]
    data.goal_time_tolerance = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CartesianTrajectory.getMessageSize(object.trajectory);
    return length + 296;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartesian_control_msgs/FollowCartesianTrajectoryGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53c6564a309cf1d1f2d2c4e0478a40b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    CartesianTrajectory trajectory
    CartesianTolerance path_tolerance
    CartesianTolerance goal_tolerance
    duration goal_time_tolerance
    
    
    ================================================================================
    MSG: cartesian_control_msgs/CartesianTrajectory
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
    
    ================================================================================
    MSG: cartesian_control_msgs/CartesianTolerance
    geometry_msgs/Vector3 position_error
    geometry_msgs/Vector3 orientation_error
    geometry_msgs/Twist twist_error
    geometry_msgs/Accel acceleration_error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowCartesianTrajectoryGoal(null);
    if (msg.trajectory !== undefined) {
      resolved.trajectory = CartesianTrajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new CartesianTrajectory()
    }

    if (msg.path_tolerance !== undefined) {
      resolved.path_tolerance = CartesianTolerance.Resolve(msg.path_tolerance)
    }
    else {
      resolved.path_tolerance = new CartesianTolerance()
    }

    if (msg.goal_tolerance !== undefined) {
      resolved.goal_tolerance = CartesianTolerance.Resolve(msg.goal_tolerance)
    }
    else {
      resolved.goal_tolerance = new CartesianTolerance()
    }

    if (msg.goal_time_tolerance !== undefined) {
      resolved.goal_time_tolerance = msg.goal_time_tolerance;
    }
    else {
      resolved.goal_time_tolerance = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = FollowCartesianTrajectoryGoal;
