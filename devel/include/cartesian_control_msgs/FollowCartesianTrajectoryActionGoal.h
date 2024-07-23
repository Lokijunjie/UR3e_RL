// Generated by gencpp from file cartesian_control_msgs/FollowCartesianTrajectoryActionGoal.msg
// DO NOT EDIT!


#ifndef CARTESIAN_CONTROL_MSGS_MESSAGE_FOLLOWCARTESIANTRAJECTORYACTIONGOAL_H
#define CARTESIAN_CONTROL_MSGS_MESSAGE_FOLLOWCARTESIANTRAJECTORYACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <cartesian_control_msgs/FollowCartesianTrajectoryGoal.h>

namespace cartesian_control_msgs
{
template <class ContainerAllocator>
struct FollowCartesianTrajectoryActionGoal_
{
  typedef FollowCartesianTrajectoryActionGoal_<ContainerAllocator> Type;

  FollowCartesianTrajectoryActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  FollowCartesianTrajectoryActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::cartesian_control_msgs::FollowCartesianTrajectoryGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct FollowCartesianTrajectoryActionGoal_

typedef ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<std::allocator<void> > FollowCartesianTrajectoryActionGoal;

typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal > FollowCartesianTrajectoryActionGoalPtr;
typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal const> FollowCartesianTrajectoryActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator1> & lhs, const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator1> & lhs, const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cartesian_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4056d334183d6e78f45b035350ac6b04";
  }

  static const char* value(const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4056d334183d6e78ULL;
  static const uint64_t static_value2 = 0xf45b035350ac6b04ULL;
};

template<class ContainerAllocator>
struct DataType< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cartesian_control_msgs/FollowCartesianTrajectoryActionGoal";
  }

  static const char* value(const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"FollowCartesianTrajectoryGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: cartesian_control_msgs/FollowCartesianTrajectoryGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"CartesianTrajectory trajectory\n"
"CartesianTolerance path_tolerance\n"
"CartesianTolerance goal_tolerance\n"
"duration goal_time_tolerance\n"
"\n"
"\n"
"================================================================================\n"
"MSG: cartesian_control_msgs/CartesianTrajectory\n"
"# header.frame_id is the frame in which all data from CartesianTrajectoryPoint[] is given\n"
"Header header\n"
"CartesianTrajectoryPoint[] points\n"
"string controlled_frame\n"
"\n"
"================================================================================\n"
"MSG: cartesian_control_msgs/CartesianTrajectoryPoint\n"
"duration time_from_start\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Twist twist\n"
"geometry_msgs/Accel acceleration\n"
"# A more suitable datatype would be good, see https://github.com/ros/common_msgs/issues/137\n"
"geometry_msgs/Accel jerk\n"
"CartesianPosture posture\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: cartesian_control_msgs/CartesianPosture\n"
"# Posture joint names may reflect a subset of all available joints (empty posture definitions are\n"
"# also possible). The length of posture_joint_names and posture_joint_values have to be equal.\n"
"\n"
"string[] posture_joint_names\n"
"float64[] posture_joint_values\n"
"\n"
"================================================================================\n"
"MSG: cartesian_control_msgs/CartesianTolerance\n"
"geometry_msgs/Vector3 position_error\n"
"geometry_msgs/Vector3 orientation_error\n"
"geometry_msgs/Twist twist_error\n"
"geometry_msgs/Accel acceleration_error\n"
;
  }

  static const char* value(const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowCartesianTrajectoryActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cartesian_control_msgs::FollowCartesianTrajectoryActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::cartesian_control_msgs::FollowCartesianTrajectoryGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARTESIAN_CONTROL_MSGS_MESSAGE_FOLLOWCARTESIANTRAJECTORYACTIONGOAL_H
