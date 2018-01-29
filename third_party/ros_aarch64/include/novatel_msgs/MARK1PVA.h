// Generated by gencpp from file novatel_msgs/MARK1PVA.msg
// DO NOT EDIT!


#ifndef NOVATEL_MSGS_MESSAGE_MARK1PVA_H
#define NOVATEL_MSGS_MESSAGE_MARK1PVA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <novatel_msgs/CommonHeader.h>

namespace novatel_msgs
{
template <class ContainerAllocator>
struct MARK1PVA_
{
  typedef MARK1PVA_<ContainerAllocator> Type;

  MARK1PVA_()
    : header()
    , week(0)
    , gpssec(0.0)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , velx(0.0)
    , vely(0.0)
    , velz(0.0)
    , roll(0.0)
    , pitch(0.0)
    , azimuth(0.0)
    , insstatus(0)  {
    }
  MARK1PVA_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , week(0)
    , gpssec(0.0)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , velx(0.0)
    , vely(0.0)
    , velz(0.0)
    , roll(0.0)
    , pitch(0.0)
    , azimuth(0.0)
    , insstatus(0)  {
  (void)_alloc;
    }



   typedef  ::novatel_msgs::CommonHeader_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _week_type;
  _week_type week;

   typedef double _gpssec_type;
  _gpssec_type gpssec;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _altitude_type;
  _altitude_type altitude;

   typedef double _velx_type;
  _velx_type velx;

   typedef double _vely_type;
  _vely_type vely;

   typedef double _velz_type;
  _velz_type velz;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _azimuth_type;
  _azimuth_type azimuth;

   typedef uint32_t _insstatus_type;
  _insstatus_type insstatus;




  typedef boost::shared_ptr< ::novatel_msgs::MARK1PVA_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::novatel_msgs::MARK1PVA_<ContainerAllocator> const> ConstPtr;

}; // struct MARK1PVA_

typedef ::novatel_msgs::MARK1PVA_<std::allocator<void> > MARK1PVA;

typedef boost::shared_ptr< ::novatel_msgs::MARK1PVA > MARK1PVAPtr;
typedef boost::shared_ptr< ::novatel_msgs::MARK1PVA const> MARK1PVAConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::novatel_msgs::MARK1PVA_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace novatel_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/geometry_msgs/cmake/../msg'], 'novatel_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/modules/ros/novatel_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::novatel_msgs::MARK1PVA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::novatel_msgs::MARK1PVA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_msgs::MARK1PVA_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86fbbac11eada2d3b2b8df9ef21d22b6";
  }

  static const char* value(const ::novatel_msgs::MARK1PVA_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86fbbac11eada2d3ULL;
  static const uint64_t static_value2 = 0xb2b8df9ef21d22b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "novatel_msgs/MARK1PVA";
  }

  static const char* value(const ::novatel_msgs::MARK1PVA_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# message 507\n\
novatel_msgs/CommonHeader header\n\
\n\
int32 week\n\
float64 gpssec\n\
\n\
float64 latitude\n\
float64 longitude\n\
float64 altitude\n\
\n\
float64 velx\n\
float64 vely\n\
float64 velz\n\
\n\
float64 roll\n\
float64 pitch\n\
float64 azimuth\n\
\n\
uint32 insstatus\n\
\n\
================================================================================\n\
MSG: novatel_msgs/CommonHeader\n\
# On the wire, this header is preceeded by three sync bytes,\n\
# which are 0xAA 0x44 0x12, and a uint8 which is the header length.\n\
\n\
# Message ID of the log being output.\n\
uint16 id\n\
\n\
# Measurement source, format, response bit.\n\
uint8 msg_type\n\
\n\
uint8 port_addr\n\
uint16 length\n\
uint16 sequence\n\
\n\
uint8 idle_time\n\
uint8 time_status\n\
\n\
uint16 gps_week\n\
uint32 gps_week_milliseconds\n\
\n\
# Table 3 in the SPAN on OEM6 manual.\n\
# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13\n\
uint32 receiver_status\n\
uint32 RECEIVER_STATUS_ERROR=1\n\
uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2\n\
uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4\n\
uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8\n\
uint32 RECEIVER_STATUS_LNA_FAILURE=16\n\
uint32 RECEIVER_STATUS_ANTENNA_OPEN=32\n\
uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64\n\
uint32 RECEIVER_STATUS_CPU_OVERLOADED=128\n\
uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256\n\
uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512\n\
uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024\n\
uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048\n\
uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192\n\
uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384\n\
uint32 RECEIVER_STATUS_INS_RESET=65536\n\
uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144\n\
uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288\n\
uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576\n\
uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152\n\
uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304\n\
uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608\n\
uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216\n\
uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912\n\
uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824\n\
uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648\n\
\n\
uint16 reserved\n\
uint16 software_version\n\
\n\
";
  }

  static const char* value(const ::novatel_msgs::MARK1PVA_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.week);
      stream.next(m.gpssec);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
      stream.next(m.velx);
      stream.next(m.vely);
      stream.next(m.velz);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.azimuth);
      stream.next(m.insstatus);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MARK1PVA_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::novatel_msgs::MARK1PVA_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::novatel_msgs::MARK1PVA_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::novatel_msgs::CommonHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "week: ";
    Printer<int32_t>::stream(s, indent + "  ", v.week);
    s << indent << "gpssec: ";
    Printer<double>::stream(s, indent + "  ", v.gpssec);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<double>::stream(s, indent + "  ", v.altitude);
    s << indent << "velx: ";
    Printer<double>::stream(s, indent + "  ", v.velx);
    s << indent << "vely: ";
    Printer<double>::stream(s, indent + "  ", v.vely);
    s << indent << "velz: ";
    Printer<double>::stream(s, indent + "  ", v.velz);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "azimuth: ";
    Printer<double>::stream(s, indent + "  ", v.azimuth);
    s << indent << "insstatus: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.insstatus);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NOVATEL_MSGS_MESSAGE_MARK1PVA_H
