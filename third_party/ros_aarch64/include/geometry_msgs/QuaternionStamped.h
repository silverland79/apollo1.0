// Generated by gencpp from file geometry_msgs/QuaternionStamped.msg
// DO NOT EDIT!


#ifndef GEOMETRY_MSGS_MESSAGE_QUATERNIONSTAMPED_H
#define GEOMETRY_MSGS_MESSAGE_QUATERNIONSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Quaternion.h>

namespace geometry_msgs
{
template <class ContainerAllocator>
struct QuaternionStamped_
{
  typedef QuaternionStamped_<ContainerAllocator> Type;

  QuaternionStamped_()
    : header()
    , quaternion()  {
    }
  QuaternionStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , quaternion(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _quaternion_type;
  _quaternion_type quaternion;




  typedef boost::shared_ptr< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> const> ConstPtr;

}; // struct QuaternionStamped_

typedef ::geometry_msgs::QuaternionStamped_<std::allocator<void> > QuaternionStamped;

typedef boost::shared_ptr< ::geometry_msgs::QuaternionStamped > QuaternionStampedPtr;
typedef boost::shared_ptr< ::geometry_msgs::QuaternionStamped const> QuaternionStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::geometry_msgs::QuaternionStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace geometry_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/modules/ros/common_msgs/geometry_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e57f1e547e0e1fd13504588ffc8334e2";
  }

  static const char* value(const ::geometry_msgs::QuaternionStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe57f1e547e0e1fd1ULL;
  static const uint64_t static_value2 = 0x3504588ffc8334e2ULL;
};

template<class ContainerAllocator>
struct DataType< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/QuaternionStamped";
  }

  static const char* value(const ::geometry_msgs::QuaternionStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This represents an orientation with reference coordinate frame and timestamp.\n\
\n\
Header header\n\
Quaternion quaternion\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::geometry_msgs::QuaternionStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.quaternion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QuaternionStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::geometry_msgs::QuaternionStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::geometry_msgs::QuaternionStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "quaternion: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.quaternion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEOMETRY_MSGS_MESSAGE_QUATERNIONSTAMPED_H
