# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cartesian_control_msgs/CartesianTrajectoryPoint.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cartesian_control_msgs.msg
import genpy
import geometry_msgs.msg

class CartesianTrajectoryPoint(genpy.Message):
  _md5sum = "02d556067c148166af2dabae6251c00f"
  _type = "cartesian_control_msgs/CartesianTrajectoryPoint"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """duration time_from_start
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
"""
  __slots__ = ['time_from_start','pose','twist','acceleration','jerk','posture']
  _slot_types = ['duration','geometry_msgs/Pose','geometry_msgs/Twist','geometry_msgs/Accel','geometry_msgs/Accel','cartesian_control_msgs/CartesianPosture']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time_from_start,pose,twist,acceleration,jerk,posture

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CartesianTrajectoryPoint, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time_from_start is None:
        self.time_from_start = genpy.Duration()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.twist is None:
        self.twist = geometry_msgs.msg.Twist()
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Accel()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Accel()
      if self.posture is None:
        self.posture = cartesian_control_msgs.msg.CartesianPosture()
    else:
      self.time_from_start = genpy.Duration()
      self.pose = geometry_msgs.msg.Pose()
      self.twist = geometry_msgs.msg.Twist()
      self.acceleration = geometry_msgs.msg.Accel()
      self.jerk = geometry_msgs.msg.Accel()
      self.posture = cartesian_control_msgs.msg.CartesianPosture()

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
      buff.write(_get_struct_2i25d().pack(_x.time_from_start.secs, _x.time_from_start.nsecs, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.twist.linear.x, _x.twist.linear.y, _x.twist.linear.z, _x.twist.angular.x, _x.twist.angular.y, _x.twist.angular.z, _x.acceleration.linear.x, _x.acceleration.linear.y, _x.acceleration.linear.z, _x.acceleration.angular.x, _x.acceleration.angular.y, _x.acceleration.angular.z, _x.jerk.linear.x, _x.jerk.linear.y, _x.jerk.linear.z, _x.jerk.angular.x, _x.jerk.angular.y, _x.jerk.angular.z))
      length = len(self.posture.posture_joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.posture.posture_joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.posture.posture_joint_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.posture.posture_joint_values))
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
      if self.time_from_start is None:
        self.time_from_start = genpy.Duration()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.twist is None:
        self.twist = geometry_msgs.msg.Twist()
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Accel()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Accel()
      if self.posture is None:
        self.posture = cartesian_control_msgs.msg.CartesianPosture()
      end = 0
      _x = self
      start = end
      end += 208
      (_x.time_from_start.secs, _x.time_from_start.nsecs, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.twist.linear.x, _x.twist.linear.y, _x.twist.linear.z, _x.twist.angular.x, _x.twist.angular.y, _x.twist.angular.z, _x.acceleration.linear.x, _x.acceleration.linear.y, _x.acceleration.linear.z, _x.acceleration.angular.x, _x.acceleration.angular.y, _x.acceleration.angular.z, _x.jerk.linear.x, _x.jerk.linear.y, _x.jerk.linear.z, _x.jerk.angular.x, _x.jerk.angular.y, _x.jerk.angular.z,) = _get_struct_2i25d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.posture.posture_joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.posture.posture_joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.posture.posture_joint_values = s.unpack(str[start:end])
      self.time_from_start.canon()
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
      buff.write(_get_struct_2i25d().pack(_x.time_from_start.secs, _x.time_from_start.nsecs, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.twist.linear.x, _x.twist.linear.y, _x.twist.linear.z, _x.twist.angular.x, _x.twist.angular.y, _x.twist.angular.z, _x.acceleration.linear.x, _x.acceleration.linear.y, _x.acceleration.linear.z, _x.acceleration.angular.x, _x.acceleration.angular.y, _x.acceleration.angular.z, _x.jerk.linear.x, _x.jerk.linear.y, _x.jerk.linear.z, _x.jerk.angular.x, _x.jerk.angular.y, _x.jerk.angular.z))
      length = len(self.posture.posture_joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.posture.posture_joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.posture.posture_joint_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.posture.posture_joint_values.tostring())
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
      if self.time_from_start is None:
        self.time_from_start = genpy.Duration()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.twist is None:
        self.twist = geometry_msgs.msg.Twist()
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Accel()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Accel()
      if self.posture is None:
        self.posture = cartesian_control_msgs.msg.CartesianPosture()
      end = 0
      _x = self
      start = end
      end += 208
      (_x.time_from_start.secs, _x.time_from_start.nsecs, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.twist.linear.x, _x.twist.linear.y, _x.twist.linear.z, _x.twist.angular.x, _x.twist.angular.y, _x.twist.angular.z, _x.acceleration.linear.x, _x.acceleration.linear.y, _x.acceleration.linear.z, _x.acceleration.angular.x, _x.acceleration.angular.y, _x.acceleration.angular.z, _x.jerk.linear.x, _x.jerk.linear.y, _x.jerk.linear.z, _x.jerk.angular.x, _x.jerk.angular.y, _x.jerk.angular.z,) = _get_struct_2i25d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.posture.posture_joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.posture.posture_joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.posture.posture_joint_values = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      self.time_from_start.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i25d = None
def _get_struct_2i25d():
    global _struct_2i25d
    if _struct_2i25d is None:
        _struct_2i25d = struct.Struct("<2i25d")
    return _struct_2i25d