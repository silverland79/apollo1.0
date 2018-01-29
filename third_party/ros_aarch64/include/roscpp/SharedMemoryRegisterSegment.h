// Generated by gencpp from file roscpp/SharedMemoryRegisterSegment.msg
// DO NOT EDIT!


#ifndef ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENT_H
#define ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENT_H

#include <ros/service_traits.h>


#include <roscpp/SharedMemoryRegisterSegmentRequest.h>
#include <roscpp/SharedMemoryRegisterSegmentResponse.h>


namespace roscpp
{

struct SharedMemoryRegisterSegment
{

typedef SharedMemoryRegisterSegmentRequest Request;
typedef SharedMemoryRegisterSegmentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SharedMemoryRegisterSegment
} // namespace roscpp


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roscpp::SharedMemoryRegisterSegment > {
  static const char* value()
  {
    return "9014a4b52c1ba99c200758d58f7a1006";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegment&) { return value(); }
};

template<>
struct DataType< ::roscpp::SharedMemoryRegisterSegment > {
  static const char* value()
  {
    return "roscpp/SharedMemoryRegisterSegment";
  }

  static const char* value(const ::roscpp::SharedMemoryRegisterSegment&) { return value(); }
};


// service_traits::MD5Sum< ::roscpp::SharedMemoryRegisterSegmentRequest> should match 
// service_traits::MD5Sum< ::roscpp::SharedMemoryRegisterSegment > 
template<>
struct MD5Sum< ::roscpp::SharedMemoryRegisterSegmentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roscpp::SharedMemoryRegisterSegment >::value();
  }
  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roscpp::SharedMemoryRegisterSegmentRequest> should match 
// service_traits::DataType< ::roscpp::SharedMemoryRegisterSegment > 
template<>
struct DataType< ::roscpp::SharedMemoryRegisterSegmentRequest>
{
  static const char* value()
  {
    return DataType< ::roscpp::SharedMemoryRegisterSegment >::value();
  }
  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roscpp::SharedMemoryRegisterSegmentResponse> should match 
// service_traits::MD5Sum< ::roscpp::SharedMemoryRegisterSegment > 
template<>
struct MD5Sum< ::roscpp::SharedMemoryRegisterSegmentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roscpp::SharedMemoryRegisterSegment >::value();
  }
  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roscpp::SharedMemoryRegisterSegmentResponse> should match 
// service_traits::DataType< ::roscpp::SharedMemoryRegisterSegment > 
template<>
struct DataType< ::roscpp::SharedMemoryRegisterSegmentResponse>
{
  static const char* value()
  {
    return DataType< ::roscpp::SharedMemoryRegisterSegment >::value();
  }
  static const char* value(const ::roscpp::SharedMemoryRegisterSegmentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSCPP_MESSAGE_SHAREDMEMORYREGISTERSEGMENT_H
