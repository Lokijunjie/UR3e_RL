// Generated by gencpp from file cartesian_control_msgs/FollowCartesianTrajectoryResult.msg
// DO NOT EDIT!


#ifndef CARTESIAN_CONTROL_MSGS_MESSAGE_FOLLOWCARTESIANTRAJECTORYRESULT_H
#define CARTESIAN_CONTROL_MSGS_MESSAGE_FOLLOWCARTESIANTRAJECTORYRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cartesian_control_msgs
{
template <class ContainerAllocator>
struct FollowCartesianTrajectoryResult_
{
  typedef FollowCartesianTrajectoryResult_<ContainerAllocator> Type;

  FollowCartesianTrajectoryResult_()
    : error_code(0)
    , error_string()  {
    }
  FollowCartesianTrajectoryResult_(const ContainerAllocator& _alloc)
    : error_code(0)
    , error_string(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _error_string_type;
  _error_string_type error_string;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SUCCESSFUL)
  #undef SUCCESSFUL
#endif
#if defined(_WIN32) && defined(INVALID_GOAL)
  #undef INVALID_GOAL
#endif
#if defined(_WIN32) && defined(INVALID_JOINTS)
  #undef INVALID_JOINTS
#endif
#if defined(_WIN32) && defined(OLD_HEADER_TIMESTAMP)
  #undef OLD_HEADER_TIMESTAMP
#endif
#if defined(_WIN32) && defined(PATH_TOLERANCE_VIOLATED)
  #undef PATH_TOLERANCE_VIOLATED
#endif
#if defined(_WIN32) && defined(GOAL_TOLERANCE_VIOLATED)
  #undef GOAL_TOLERANCE_VIOLATED
#endif
#if defined(_WIN32) && defined(INVALID_POSTURE)
  #undef INVALID_POSTURE
#endif

  enum {
    SUCCESSFUL = 0,
    INVALID_GOAL = -1,
    INVALID_JOINTS = -2,
    OLD_HEADER_TIMESTAMP = -3,
    PATH_TOLERANCE_VIOLATED = -4,
    GOAL_TOLERANCE_VIOLATED = -5,
    INVALID_POSTURE = -6,
  };


  typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> const> ConstPtr;

}; // struct FollowCartesianTrajectoryResult_

typedef ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<std::allocator<void> > FollowCartesianTrajectoryResult;

typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryResult > FollowCartesianTrajectoryResultPtr;
typedef boost::shared_ptr< ::cartesian_control_msgs::FollowCartesianTrajectoryResult const> FollowCartesianTrajectoryResultConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator1> & lhs, const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator2> & rhs)
{
  return lhs.error_code == rhs.error_code &&
    lhs.error_string == rhs.error_string;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator1> & lhs, const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cartesian_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "56145446855197a5891086450d36e145";
  }

  static const char* value(const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x56145446855197a5ULL;
  static const uint64_t static_value2 = 0x891086450d36e145ULL;
};

template<class ContainerAllocator>
struct DataType< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cartesian_control_msgs/FollowCartesianTrajectoryResult";
  }

  static const char* value(const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"int32 error_code\n"
"int32 SUCCESSFUL = 0\n"
"int32 INVALID_GOAL = -1 # e.g. illegal quaternions in poses\n"
"int32 INVALID_JOINTS = -2\n"
"int32 OLD_HEADER_TIMESTAMP = -3\n"
"int32 PATH_TOLERANCE_VIOLATED = -4\n"
"int32 GOAL_TOLERANCE_VIOLATED = -5\n"
"int32 INVALID_POSTURE = -6\n"
"\n"
"string error_string\n"
"\n"
;
  }

  static const char* value(const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error_code);
      stream.next(m.error_string);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowCartesianTrajectoryResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cartesian_control_msgs::FollowCartesianTrajectoryResult_<ContainerAllocator>& v)
  {
    s << indent << "error_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "error_string: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.error_string);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARTESIAN_CONTROL_MSGS_MESSAGE_FOLLOWCARTESIANTRAJECTORYRESULT_H
