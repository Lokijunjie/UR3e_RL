# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cartesian_control_msgs/FollowCartesianTrajectoryGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cartesian_control_msgs.msg
import genpy
import geometry_msgs.msg
import std_msgs.msg

class FollowCartesianTrajectoryGoal(genpy.Message):
  _md5sum = "53c6564a309cf1d1f2d2c4e0478a40b3"
  _type = "cartesian_control_msgs/FollowCartesianTrajectoryGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
"""
  __slots__ = ['trajectory','path_tolerance','goal_tolerance','goal_time_tolerance']
  _slot_types = ['cartesian_control_msgs/CartesianTrajectory','cartesian_control_msgs/CartesianTolerance','cartesian_control_msgs/CartesianTolerance','duration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       trajectory,path_tolerance,goal_tolerance,goal_time_tolerance

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FollowCartesianTrajectoryGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.trajectory is None:
        self.trajectory = cartesian_control_msgs.msg.CartesianTrajectory()
      if self.path_tolerance is None:
        self.path_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      if self.goal_tolerance is None:
        self.goal_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      if self.goal_time_tolerance is None:
        self.goal_time_tolerance = genpy.Duration()
    else:
      self.trajectory = cartesian_control_msgs.msg.CartesianTrajectory()
      self.path_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      self.goal_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      self.goal_time_tolerance = genpy.Duration()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.trajectory.header.seq, _x.trajectory.header.stamp.secs, _x.trajectory.header.stamp.nsecs))
      _x = self.trajectory.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.trajectory.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory.points:
        _v1 = val1.time_from_start
        _x = _v1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v2 = val1.pose
        _v3 = _v2.position
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = _v2.orientation
        _x = _v4
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v5 = val1.twist
        _v6 = _v5.linear
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = _v5.angular
        _x = _v7
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v8 = val1.acceleration
        _v9 = _v8.linear
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = _v8.angular
        _x = _v10
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v11 = val1.jerk
        _v12 = _v11.linear
        _x = _v12
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v13 = _v11.angular
        _x = _v13
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v14 = val1.posture
        length = len(_v14.posture_joint_names)
        buff.write(_struct_I.pack(length))
        for val3 in _v14.posture_joint_names:
          length = len(val3)
          if python3 or type(val3) == unicode:
            val3 = val3.encode('utf-8')
            length = len(val3)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val3))
        length = len(_v14.posture_joint_values)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*_v14.posture_joint_values))
      _x = self.trajectory.controlled_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_36d2i().pack(_x.path_tolerance.position_error.x, _x.path_tolerance.position_error.y, _x.path_tolerance.position_error.z, _x.path_tolerance.orientation_error.x, _x.path_tolerance.orientation_error.y, _x.path_tolerance.orientation_error.z, _x.path_tolerance.twist_error.linear.x, _x.path_tolerance.twist_error.linear.y, _x.path_tolerance.twist_error.linear.z, _x.path_tolerance.twist_error.angular.x, _x.path_tolerance.twist_error.angular.y, _x.path_tolerance.twist_error.angular.z, _x.path_tolerance.acceleration_error.linear.x, _x.path_tolerance.acceleration_error.linear.y, _x.path_tolerance.acceleration_error.linear.z, _x.path_tolerance.acceleration_error.angular.x, _x.path_tolerance.acceleration_error.angular.y, _x.path_tolerance.acceleration_error.angular.z, _x.goal_tolerance.position_error.x, _x.goal_tolerance.position_error.y, _x.goal_tolerance.position_error.z, _x.goal_tolerance.orientation_error.x, _x.goal_tolerance.orientation_error.y, _x.goal_tolerance.orientation_error.z, _x.goal_tolerance.twist_error.linear.x, _x.goal_tolerance.twist_error.linear.y, _x.goal_tolerance.twist_error.linear.z, _x.goal_tolerance.twist_error.angular.x, _x.goal_tolerance.twist_error.angular.y, _x.goal_tolerance.twist_error.angular.z, _x.goal_tolerance.acceleration_error.linear.x, _x.goal_tolerance.acceleration_error.linear.y, _x.goal_tolerance.acceleration_error.linear.z, _x.goal_tolerance.acceleration_error.angular.x, _x.goal_tolerance.acceleration_error.angular.y, _x.goal_tolerance.acceleration_error.angular.z, _x.goal_time_tolerance.secs, _x.goal_time_tolerance.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.trajectory is None:
        self.trajectory = cartesian_control_msgs.msg.CartesianTrajectory()
      if self.path_tolerance is None:
        self.path_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      if self.goal_tolerance is None:
        self.goal_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      if self.goal_time_tolerance is None:
        self.goal_time_tolerance = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.trajectory.header.seq, _x.trajectory.header.stamp.secs, _x.trajectory.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.trajectory.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.trajectory.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory.points = []
      for i in range(0, length):
        val1 = cartesian_control_msgs.msg.CartesianTrajectoryPoint()
        _v15 = val1.time_from_start
        _x = _v15
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        _v16 = val1.pose
        _v17 = _v16.position
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v18 = _v16.orientation
        _x = _v18
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v19 = val1.twist
        _v20 = _v19.linear
        _x = _v20
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v21 = _v19.angular
        _x = _v21
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v22 = val1.acceleration
        _v23 = _v22.linear
        _x = _v23
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v24 = _v22.angular
        _x = _v24
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v25 = val1.jerk
        _v26 = _v25.linear
        _x = _v26
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v27 = _v25.angular
        _x = _v27
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v28 = val1.posture
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v28.posture_joint_names = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val3 = str[start:end]
          _v28.posture_joint_names.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v28.posture_joint_values = s.unpack(str[start:end])
        self.trajectory.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.trajectory.controlled_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.trajectory.controlled_frame = str[start:end]
      _x = self
      start = end
      end += 296
      (_x.path_tolerance.position_error.x, _x.path_tolerance.position_error.y, _x.path_tolerance.position_error.z, _x.path_tolerance.orientation_error.x, _x.path_tolerance.orientation_error.y, _x.path_tolerance.orientation_error.z, _x.path_tolerance.twist_error.linear.x, _x.path_tolerance.twist_error.linear.y, _x.path_tolerance.twist_error.linear.z, _x.path_tolerance.twist_error.angular.x, _x.path_tolerance.twist_error.angular.y, _x.path_tolerance.twist_error.angular.z, _x.path_tolerance.acceleration_error.linear.x, _x.path_tolerance.acceleration_error.linear.y, _x.path_tolerance.acceleration_error.linear.z, _x.path_tolerance.acceleration_error.angular.x, _x.path_tolerance.acceleration_error.angular.y, _x.path_tolerance.acceleration_error.angular.z, _x.goal_tolerance.position_error.x, _x.goal_tolerance.position_error.y, _x.goal_tolerance.position_error.z, _x.goal_tolerance.orientation_error.x, _x.goal_tolerance.orientation_error.y, _x.goal_tolerance.orientation_error.z, _x.goal_tolerance.twist_error.linear.x, _x.goal_tolerance.twist_error.linear.y, _x.goal_tolerance.twist_error.linear.z, _x.goal_tolerance.twist_error.angular.x, _x.goal_tolerance.twist_error.angular.y, _x.goal_tolerance.twist_error.angular.z, _x.goal_tolerance.acceleration_error.linear.x, _x.goal_tolerance.acceleration_error.linear.y, _x.goal_tolerance.acceleration_error.linear.z, _x.goal_tolerance.acceleration_error.angular.x, _x.goal_tolerance.acceleration_error.angular.y, _x.goal_tolerance.acceleration_error.angular.z, _x.goal_time_tolerance.secs, _x.goal_time_tolerance.nsecs,) = _get_struct_36d2i().unpack(str[start:end])
      self.goal_time_tolerance.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.trajectory.header.seq, _x.trajectory.header.stamp.secs, _x.trajectory.header.stamp.nsecs))
      _x = self.trajectory.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.trajectory.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory.points:
        _v29 = val1.time_from_start
        _x = _v29
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v30 = val1.pose
        _v31 = _v30.position
        _x = _v31
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v32 = _v30.orientation
        _x = _v32
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v33 = val1.twist
        _v34 = _v33.linear
        _x = _v34
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v35 = _v33.angular
        _x = _v35
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v36 = val1.acceleration
        _v37 = _v36.linear
        _x = _v37
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v38 = _v36.angular
        _x = _v38
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v39 = val1.jerk
        _v40 = _v39.linear
        _x = _v40
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v41 = _v39.angular
        _x = _v41
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v42 = val1.posture
        length = len(_v42.posture_joint_names)
        buff.write(_struct_I.pack(length))
        for val3 in _v42.posture_joint_names:
          length = len(val3)
          if python3 or type(val3) == unicode:
            val3 = val3.encode('utf-8')
            length = len(val3)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val3))
        length = len(_v42.posture_joint_values)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(_v42.posture_joint_values.tostring())
      _x = self.trajectory.controlled_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_36d2i().pack(_x.path_tolerance.position_error.x, _x.path_tolerance.position_error.y, _x.path_tolerance.position_error.z, _x.path_tolerance.orientation_error.x, _x.path_tolerance.orientation_error.y, _x.path_tolerance.orientation_error.z, _x.path_tolerance.twist_error.linear.x, _x.path_tolerance.twist_error.linear.y, _x.path_tolerance.twist_error.linear.z, _x.path_tolerance.twist_error.angular.x, _x.path_tolerance.twist_error.angular.y, _x.path_tolerance.twist_error.angular.z, _x.path_tolerance.acceleration_error.linear.x, _x.path_tolerance.acceleration_error.linear.y, _x.path_tolerance.acceleration_error.linear.z, _x.path_tolerance.acceleration_error.angular.x, _x.path_tolerance.acceleration_error.angular.y, _x.path_tolerance.acceleration_error.angular.z, _x.goal_tolerance.position_error.x, _x.goal_tolerance.position_error.y, _x.goal_tolerance.position_error.z, _x.goal_tolerance.orientation_error.x, _x.goal_tolerance.orientation_error.y, _x.goal_tolerance.orientation_error.z, _x.goal_tolerance.twist_error.linear.x, _x.goal_tolerance.twist_error.linear.y, _x.goal_tolerance.twist_error.linear.z, _x.goal_tolerance.twist_error.angular.x, _x.goal_tolerance.twist_error.angular.y, _x.goal_tolerance.twist_error.angular.z, _x.goal_tolerance.acceleration_error.linear.x, _x.goal_tolerance.acceleration_error.linear.y, _x.goal_tolerance.acceleration_error.linear.z, _x.goal_tolerance.acceleration_error.angular.x, _x.goal_tolerance.acceleration_error.angular.y, _x.goal_tolerance.acceleration_error.angular.z, _x.goal_time_tolerance.secs, _x.goal_time_tolerance.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.trajectory is None:
        self.trajectory = cartesian_control_msgs.msg.CartesianTrajectory()
      if self.path_tolerance is None:
        self.path_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      if self.goal_tolerance is None:
        self.goal_tolerance = cartesian_control_msgs.msg.CartesianTolerance()
      if self.goal_time_tolerance is None:
        self.goal_time_tolerance = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.trajectory.header.seq, _x.trajectory.header.stamp.secs, _x.trajectory.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.trajectory.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.trajectory.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory.points = []
      for i in range(0, length):
        val1 = cartesian_control_msgs.msg.CartesianTrajectoryPoint()
        _v43 = val1.time_from_start
        _x = _v43
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        _v44 = val1.pose
        _v45 = _v44.position
        _x = _v45
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v46 = _v44.orientation
        _x = _v46
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v47 = val1.twist
        _v48 = _v47.linear
        _x = _v48
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v49 = _v47.angular
        _x = _v49
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v50 = val1.acceleration
        _v51 = _v50.linear
        _x = _v51
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v52 = _v50.angular
        _x = _v52
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v53 = val1.jerk
        _v54 = _v53.linear
        _x = _v54
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v55 = _v53.angular
        _x = _v55
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v56 = val1.posture
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v56.posture_joint_names = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val3 = str[start:end]
          _v56.posture_joint_names.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        _v56.posture_joint_values = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        self.trajectory.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.trajectory.controlled_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.trajectory.controlled_frame = str[start:end]
      _x = self
      start = end
      end += 296
      (_x.path_tolerance.position_error.x, _x.path_tolerance.position_error.y, _x.path_tolerance.position_error.z, _x.path_tolerance.orientation_error.x, _x.path_tolerance.orientation_error.y, _x.path_tolerance.orientation_error.z, _x.path_tolerance.twist_error.linear.x, _x.path_tolerance.twist_error.linear.y, _x.path_tolerance.twist_error.linear.z, _x.path_tolerance.twist_error.angular.x, _x.path_tolerance.twist_error.angular.y, _x.path_tolerance.twist_error.angular.z, _x.path_tolerance.acceleration_error.linear.x, _x.path_tolerance.acceleration_error.linear.y, _x.path_tolerance.acceleration_error.linear.z, _x.path_tolerance.acceleration_error.angular.x, _x.path_tolerance.acceleration_error.angular.y, _x.path_tolerance.acceleration_error.angular.z, _x.goal_tolerance.position_error.x, _x.goal_tolerance.position_error.y, _x.goal_tolerance.position_error.z, _x.goal_tolerance.orientation_error.x, _x.goal_tolerance.orientation_error.y, _x.goal_tolerance.orientation_error.z, _x.goal_tolerance.twist_error.linear.x, _x.goal_tolerance.twist_error.linear.y, _x.goal_tolerance.twist_error.linear.z, _x.goal_tolerance.twist_error.angular.x, _x.goal_tolerance.twist_error.angular.y, _x.goal_tolerance.twist_error.angular.z, _x.goal_tolerance.acceleration_error.linear.x, _x.goal_tolerance.acceleration_error.linear.y, _x.goal_tolerance.acceleration_error.linear.z, _x.goal_tolerance.acceleration_error.angular.x, _x.goal_tolerance.acceleration_error.angular.y, _x.goal_tolerance.acceleration_error.angular.z, _x.goal_time_tolerance.secs, _x.goal_time_tolerance.nsecs,) = _get_struct_36d2i().unpack(str[start:end])
      self.goal_time_tolerance.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_36d2i = None
def _get_struct_36d2i():
    global _struct_36d2i
    if _struct_36d2i is None:
        _struct_36d2i = struct.Struct("<36d2i")
    return _struct_36d2i
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
