// Generated by gencpp from file roscpp/SharedMemoryRegisterSegmentResponse.msg
// DO NOT EDIT!


#ifndef ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENTRESPONSE_H
#define ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENTRESPONSE_H


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
struct SharedMemoryRegisterSegmentResponse_
{
  typedef SharedMemoryRegisterSegmentResponse_<ContainerAllocator> Type;

  SharedMemoryRegisterSegmentResponse_()
    : result(0)  {
    }
  SharedMemoryRegisterSegmentResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;




  typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SharedMemoryRegisterSegmentResponse_

typedef ::roscpp::SharedMemoryRegisterSegmentResponse_<std::allocator<void> > SharedMemoryRegisterSegmentResponse;

typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentResponse > SharedMemoryRegisterSegmentResponsePtr;
typedef boost::shared_ptr< ::roscpp::SharedMemoryRegisterSegmentResponse const> SharedMemoryRegisterSegmentResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace roscpp

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'roscpp': ['/tmp/apollo-platform/ros/ros_comm/roscpp/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "034a8e20d6a306665e3a5b340fab3f09";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x034a8e20d6a30666ULL;
  static const uint64_t static_value2 = 0x5e3a5b340fab3f09ULL;
};

template<class ContainerAllocator>
struct DataType< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roscpp/SharedMemoryRegisterSegmentResponse";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result\n\
\n\
\n\
";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SharedMemoryRegisterSegmentResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roscpp::SharedMemoryRegisterSegmentResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENTRESPONSE_H
