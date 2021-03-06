// Generated by gencpp from file roscpp/SharedMemoryRegisterSegmentRequest.msg
// DO NOT EDIT!


#ifndef ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENTREQUEST_H
#define ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roscpp
{
template <class ContainerAllocator>
struct SharedMemoryRegisterSegmentRequest_
{
  typedef SharedMemoryRegisterSegmentRequest_<ContainerAllocator> Type;

  SharedMemoryRegisterSegmentRequest_()
    : topic()  {
    }
  SharedMemoryRegisterSegmentRequest_(const ContainerAllocator& _alloc)
    : topic(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _topic_type;
  _topic_type topic;




  typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SharedMemoryRegisterSegmentRequest_

typedef ::roscpp::SharedMemoryRegisterSegmentRequest_<std::allocator<void> > SharedMemoryRegisterSegmentRequest;

typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentRequest > SharedMemoryRegisterSegmentRequestPtr;
typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentRequest const> SharedMemoryRegisterSegmentRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roscpp

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'roscpp': ['/home/ubuntu/baidu/adu-lab/apollo/modules/ros/ros_comm/roscpp/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8f94bae31b356b24d0427f80426d0c3";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8f94bae31b356b2ULL;
  static const uint64_t static_value2 = 0x4d0427f80426d0c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roscpp/SharedMemoryRegisterSegmentRequest";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string topic\n\
";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.topic);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SharedMemoryRegisterSegmentRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roscpp::SharedMemoryRegisterSegmentRequest_<ContainerAllocator>& v)
  {
    s << indent << "topic: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.topic);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENTREQUEST_H
