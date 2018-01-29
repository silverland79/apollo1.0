// Generated by gencpp from file std_srvs/SetBoolResponse.msg
// DO NOT EDIT!


#ifndef STD_SRVS_MESSAGE_SETBOOLRESPONSE_H
#define STD_SRVS_MESSAGE_SETBOOLRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace std_srvs
{
template <class ContainerAllocator>
struct SetBoolResponse_
{
  typedef SetBoolResponse_<ContainerAllocator> Type;

  SetBoolResponse_()
    : success(false)
    , message()  {
    }
  SetBoolResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;




  typedef boost::shared_ptr< ::std_srvs::SetBoolResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::std_srvs::SetBoolResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetBoolResponse_

typedef ::std_srvs::SetBoolResponse_<std::allocator<void> > SetBoolResponse;

typedef boost::shared_ptr< ::std_srvs::SetBoolResponse > SetBoolResponsePtr;
typedef boost::shared_ptr< ::std_srvs::SetBoolResponse const> SetBoolResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::std_srvs::SetBoolResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::std_srvs::SetBoolResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace std_srvs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::std_srvs::SetBoolResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::std_srvs::SetBoolResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::std_srvs::SetBoolResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::std_srvs::SetBoolResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_srvs/SetBoolResponse";
  }

  static const char* value(const ::std_srvs::SetBoolResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
string message\n\
\n\
";
  }

  static const char* value(const ::std_srvs::SetBoolResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetBoolResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::std_srvs::SetBoolResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::std_srvs::SetBoolResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STD_SRVS_MESSAGE_SETBOOLRESPONSE_H
