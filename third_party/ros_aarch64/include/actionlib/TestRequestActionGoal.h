// Generated by gencpp from file actionlib/TestRequestActionGoal.msg
// DO NOT EDIT!


#ifndef ACTIONLIB_MESSAGE_TESTREQUESTACTIONGOAL_H
#define ACTIONLIB_MESSAGE_TESTREQUESTACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <actionlib/TestRequestGoal.h>

namespace actionlib
{
template <class ContainerAllocator>
struct TestRequestActionGoal_
{
  typedef TestRequestActionGoal_<ContainerAllocator> Type;

  TestRequestActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  TestRequestActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::actionlib::TestRequestGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::actionlib::TestRequestActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actionlib::TestRequestActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TestRequestActionGoal_

typedef ::actionlib::TestRequestActionGoal_<std::allocator<void> > TestRequestActionGoal;

typedef boost::shared_ptr< ::actionlib::TestRequestActionGoal > TestRequestActionGoalPtr;
typedef boost::shared_ptr< ::actionlib::TestRequestActionGoal const> TestRequestActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actionlib::TestRequestActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace actionlib

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'actionlib': ['/home/ubuntu/baidu/adu-lab/apollo/modules/devel_isolated/actionlib/share/actionlib/msg'], 'std_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/home/ubuntu/baidu/adu-lab/apollo/third_party/ros/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actionlib::TestRequestActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib::TestRequestActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib::TestRequestActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1889556d3fef88f821c7cb004e4251f3";
  }

  static const char* value(const ::actionlib::TestRequestActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1889556d3fef88f8ULL;
  static const uint64_t static_value2 = 0x21c7cb004e4251f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actionlib/TestRequestActionGoal";
  }

  static const char* value(const ::actionlib::TestRequestActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
TestRequestGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: actionlib/TestRequestGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int32 TERMINATE_SUCCESS = 0\n\
int32 TERMINATE_ABORTED = 1\n\
int32 TERMINATE_REJECTED = 2\n\
int32 TERMINATE_LOSE = 3\n\
int32 TERMINATE_DROP = 4\n\
int32 TERMINATE_EXCEPTION = 5\n\
int32 terminate_status\n\
bool ignore_cancel  # If true, ignores requests to cancel\n\
string result_text\n\
int32 the_result    # Desired value for the_result in the Result\n\
bool is_simple_client\n\
duration delay_accept  # Delays accepting the goal by this amount of time\n\
duration delay_terminate  # Delays terminating for this amount of time\n\
duration pause_status  # Pauses the status messages for this amount of time\n\
";
  }

  static const char* value(const ::actionlib::TestRequestActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TestRequestActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actionlib::TestRequestActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actionlib::TestRequestActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::actionlib::TestRequestGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONLIB_MESSAGE_TESTREQUESTACTIONGOAL_H
