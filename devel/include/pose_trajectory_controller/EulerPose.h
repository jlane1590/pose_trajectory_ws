// Generated by gencpp from file pose_trajectory_controller/EulerPose.msg
// DO NOT EDIT!


#ifndef POSE_TRAJECTORY_CONTROLLER_MESSAGE_EULERPOSE_H
#define POSE_TRAJECTORY_CONTROLLER_MESSAGE_EULERPOSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pose_trajectory_controller
{
template <class ContainerAllocator>
struct EulerPose_
{
  typedef EulerPose_<ContainerAllocator> Type;

  EulerPose_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , r(0.0)
    , p(0.0)
    , w(0.0)  {
    }
  EulerPose_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , r(0.0)
    , p(0.0)
    , w(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _r_type;
  _r_type r;

   typedef double _p_type;
  _p_type p;

   typedef double _w_type;
  _w_type w;





  typedef boost::shared_ptr< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> const> ConstPtr;

}; // struct EulerPose_

typedef ::pose_trajectory_controller::EulerPose_<std::allocator<void> > EulerPose;

typedef boost::shared_ptr< ::pose_trajectory_controller::EulerPose > EulerPosePtr;
typedef boost::shared_ptr< ::pose_trajectory_controller::EulerPose const> EulerPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_trajectory_controller::EulerPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pose_trajectory_controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pose_trajectory_controller': ['/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg', '/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6aa9c98ccc4b2e3baa57865afc05770e";
  }

  static const char* value(const ::pose_trajectory_controller::EulerPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6aa9c98ccc4b2e3bULL;
  static const uint64_t static_value2 = 0xaa57865afc05770eULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_trajectory_controller/EulerPose";
  }

  static const char* value(const ::pose_trajectory_controller::EulerPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
float64 z\n\
float64 r\n\
float64 p\n\
float64 w\n\
";
  }

  static const char* value(const ::pose_trajectory_controller::EulerPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.r);
      stream.next(m.p);
      stream.next(m.w);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EulerPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_trajectory_controller::EulerPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_trajectory_controller::EulerPose_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "r: ";
    Printer<double>::stream(s, indent + "  ", v.r);
    s << indent << "p: ";
    Printer<double>::stream(s, indent + "  ", v.p);
    s << indent << "w: ";
    Printer<double>::stream(s, indent + "  ", v.w);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_TRAJECTORY_CONTROLLER_MESSAGE_EULERPOSE_H
