// Generated by gencpp from file pose_trajectory_merger/MergeTwoPoseTrajResponse.msg
// DO NOT EDIT!


#ifndef POSE_TRAJECTORY_MERGER_MESSAGE_MERGETWOPOSETRAJRESPONSE_H
#define POSE_TRAJECTORY_MERGER_MESSAGE_MERGETWOPOSETRAJRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pose_trajectory_controller/PoseTrajectory.h>

namespace pose_trajectory_merger
{
template <class ContainerAllocator>
struct MergeTwoPoseTrajResponse_
{
  typedef MergeTwoPoseTrajResponse_<ContainerAllocator> Type;

  MergeTwoPoseTrajResponse_()
    : mergedTraj()  {
    }
  MergeTwoPoseTrajResponse_(const ContainerAllocator& _alloc)
    : mergedTraj(_alloc)  {
  (void)_alloc;
    }



   typedef  ::pose_trajectory_controller::PoseTrajectory_<ContainerAllocator>  _mergedTraj_type;
  _mergedTraj_type mergedTraj;





  typedef boost::shared_ptr< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MergeTwoPoseTrajResponse_

typedef ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<std::allocator<void> > MergeTwoPoseTrajResponse;

typedef boost::shared_ptr< ::pose_trajectory_merger::MergeTwoPoseTrajResponse > MergeTwoPoseTrajResponsePtr;
typedef boost::shared_ptr< ::pose_trajectory_merger::MergeTwoPoseTrajResponse const> MergeTwoPoseTrajResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pose_trajectory_merger

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pose_trajectory_controller': ['/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg', '/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ded2a268e0dc3856bb45a4bee896772";
  }

  static const char* value(const ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ded2a268e0dc385ULL;
  static const uint64_t static_value2 = 0x6bb45a4bee896772ULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_trajectory_merger/MergeTwoPoseTrajResponse";
  }

  static const char* value(const ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_trajectory_controller/PoseTrajectory mergedTraj\n\
\n\
\n\
================================================================================\n\
MSG: pose_trajectory_controller/PoseTrajectory\n\
Header header\n\
string[] axis_names\n\
PoseTrajectoryPoint[] points\n\
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
MSG: pose_trajectory_controller/PoseTrajectoryPoint\n\
float64[] positions\n\
float64[] velocities\n\
float64[] accelerations\n\
float64[] effort\n\
\n\
duration  time_from_start\n\
";
  }

  static const char* value(const ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mergedTraj);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MergeTwoPoseTrajResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_trajectory_merger::MergeTwoPoseTrajResponse_<ContainerAllocator>& v)
  {
    s << indent << "mergedTraj: ";
    s << std::endl;
    Printer< ::pose_trajectory_controller::PoseTrajectory_<ContainerAllocator> >::stream(s, indent + "  ", v.mergedTraj);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_TRAJECTORY_MERGER_MESSAGE_MERGETWOPOSETRAJRESPONSE_H
