// Generated by gencpp from file pose_trajectory_controller/MergeTwoPoseTraj.msg
// DO NOT EDIT!


#ifndef POSE_TRAJECTORY_CONTROLLER_MESSAGE_MERGETWOPOSETRAJ_H
#define POSE_TRAJECTORY_CONTROLLER_MESSAGE_MERGETWOPOSETRAJ_H

#include <ros/service_traits.h>


#include <pose_trajectory_controller/MergeTwoPoseTrajRequest.h>
#include <pose_trajectory_controller/MergeTwoPoseTrajResponse.h>


namespace pose_trajectory_controller
{

struct MergeTwoPoseTraj
{

typedef MergeTwoPoseTrajRequest Request;
typedef MergeTwoPoseTrajResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MergeTwoPoseTraj
} // namespace pose_trajectory_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTraj > {
  static const char* value()
  {
    return "e11fe386d4fd2c90cf60fe0b831365f7";
  }

  static const char* value(const ::pose_trajectory_controller::MergeTwoPoseTraj&) { return value(); }
};

template<>
struct DataType< ::pose_trajectory_controller::MergeTwoPoseTraj > {
  static const char* value()
  {
    return "pose_trajectory_controller/MergeTwoPoseTraj";
  }

  static const char* value(const ::pose_trajectory_controller::MergeTwoPoseTraj&) { return value(); }
};


// service_traits::MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTrajRequest> should match 
// service_traits::MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTraj > 
template<>
struct MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTrajRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTraj >::value();
  }
  static const char* value(const ::pose_trajectory_controller::MergeTwoPoseTrajRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pose_trajectory_controller::MergeTwoPoseTrajRequest> should match 
// service_traits::DataType< ::pose_trajectory_controller::MergeTwoPoseTraj > 
template<>
struct DataType< ::pose_trajectory_controller::MergeTwoPoseTrajRequest>
{
  static const char* value()
  {
    return DataType< ::pose_trajectory_controller::MergeTwoPoseTraj >::value();
  }
  static const char* value(const ::pose_trajectory_controller::MergeTwoPoseTrajRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTrajResponse> should match 
// service_traits::MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTraj > 
template<>
struct MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTrajResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pose_trajectory_controller::MergeTwoPoseTraj >::value();
  }
  static const char* value(const ::pose_trajectory_controller::MergeTwoPoseTrajResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pose_trajectory_controller::MergeTwoPoseTrajResponse> should match 
// service_traits::DataType< ::pose_trajectory_controller::MergeTwoPoseTraj > 
template<>
struct DataType< ::pose_trajectory_controller::MergeTwoPoseTrajResponse>
{
  static const char* value()
  {
    return DataType< ::pose_trajectory_controller::MergeTwoPoseTraj >::value();
  }
  static const char* value(const ::pose_trajectory_controller::MergeTwoPoseTrajResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POSE_TRAJECTORY_CONTROLLER_MESSAGE_MERGETWOPOSETRAJ_H
