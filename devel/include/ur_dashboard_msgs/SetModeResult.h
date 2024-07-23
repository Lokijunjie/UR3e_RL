// Generated by gencpp from file ur_dashboard_msgs/SetModeResult.msg
// DO NOT EDIT!


#ifndef UR_DASHBOARD_MSGS_MESSAGE_SETMODERESULT_H
#define UR_DASHBOARD_MSGS_MESSAGE_SETMODERESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ur_dashboard_msgs
{
template <class ContainerAllocator>
struct SetModeResult_
{
  typedef SetModeResult_<ContainerAllocator> Type;

  SetModeResult_()
    : success(false)
    , message()  {
    }
  SetModeResult_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> const> ConstPtr;

}; // struct SetModeResult_

typedef ::ur_dashboard_msgs::SetModeResult_<std::allocator<void> > SetModeResult;

typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeResult > SetModeResultPtr;
typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeResult const> SetModeResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator1> & lhs, const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator1> & lhs, const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur_dashboard_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_dashboard_msgs/SetModeResult";
  }

  static const char* value(const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# result\n"
"bool success\n"
"string message\n"
;
  }

  static const char* value(const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetModeResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_dashboard_msgs::SetModeResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_DASHBOARD_MSGS_MESSAGE_SETMODERESULT_H
