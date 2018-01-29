// Generated by gencpp from file tf2_msgs/TF2Error.msg
// DO NOT EDIT!


#ifndef TF2_MSGS_MESSAGE_TF2ERROR_H
#define TF2_MSGS_MESSAGE_TF2ERROR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tf2_msgs
{
template <class ContainerAllocator>
struct TF2Error_
{
  typedef TF2Error_<ContainerAllocator> Type;

  TF2Error_()
    : error(0)
    , error_string()  {
    }
  TF2Error_(const ContainerAllocator& _alloc)
    : error(0)
    , error_string(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _error_type;
  _error_type error;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_string_type;
  _error_string_type error_string;


    enum { NO_ERROR = 0u };
     enum { LOOKUP_ERROR = 1u };
     enum { CONNECTIVITY_ERROR = 2u };
     enum { EXTRAPOLATION_ERROR = 3u };
     enum { INVALID_ARGUMENT_ERROR = 4u };
     enum { TIMEOUT_ERROR = 5u };
     enum { TRANSFORM_ERROR = 6u };
 

  typedef boost::shared_ptr< ::tf2_msgs::TF2Error_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tf2_msgs::TF2Error_<ContainerAllocator> const> ConstPtr;

}; // struct TF2Error_

typedef ::tf2_msgs::TF2Error_<std::allocator<void> > TF2Error;

typedef boost::shared_ptr< ::tf2_msgs::TF2Error > TF2ErrorPtr;
typedef boost::shared_ptr< ::tf2_msgs::TF2Error const> TF2ErrorConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tf2_msgs::TF2Error_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tf2_msgs::TF2Error_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tf2_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/std_msgs/cmake/../msg'], 'tf2_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/modules/ros/geometry2/tf2_msgs/msg', '/home/ubuntu/baidu/adu-lab/apollo/modules/devel_isolated/tf2_msgs/share/tf2_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tf2_msgs::TF2Error_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tf2_msgs::TF2Error_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf2_msgs::TF2Error_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf2_msgs::TF2Error_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf2_msgs::TF2Error_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf2_msgs::TF2Error_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tf2_msgs::TF2Error_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc6848fd6fd750c92e38575618a4917d";
  }

  static const char* value(const ::tf2_msgs::TF2Error_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc6848fd6fd750c9ULL;
  static const uint64_t static_value2 = 0x2e38575618a4917dULL;
};

template<class ContainerAllocator>
struct DataType< ::tf2_msgs::TF2Error_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tf2_msgs/TF2Error";
  }

  static const char* value(const ::tf2_msgs::TF2Error_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tf2_msgs::TF2Error_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 NO_ERROR = 0\n\
uint8 LOOKUP_ERROR = 1\n\
uint8 CONNECTIVITY_ERROR = 2\n\
uint8 EXTRAPOLATION_ERROR = 3\n\
uint8 INVALID_ARGUMENT_ERROR = 4\n\
uint8 TIMEOUT_ERROR = 5\n\
uint8 TRANSFORM_ERROR = 6\n\
\n\
uint8 error\n\
string error_string\n\
";
  }

  static const char* value(const ::tf2_msgs::TF2Error_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tf2_msgs::TF2Error_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error);
      stream.next(m.error_string);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TF2Error_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tf2_msgs::TF2Error_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tf2_msgs::TF2Error_<ContainerAllocator>& v)
  {
    s << indent << "error: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error);
    s << indent << "error_string: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error_string);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TF2_MSGS_MESSAGE_TF2ERROR_H
