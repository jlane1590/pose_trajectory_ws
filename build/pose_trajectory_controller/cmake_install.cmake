# Install script for directory: /home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/josh/catkin_ws_pose_traj_controller/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller/msg" TYPE FILE FILES
    "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/EulerPose.msg"
    "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectoryPoint.msg"
    "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectory.msg"
    "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/AxisTolerance.msg"
    "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectoryControllerState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller/srv" TYPE FILE FILES
    "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/srv/QueryTrajectoryState.srv"
    "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/srv/MergeTwoPoseTraj.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller/action" TYPE FILE FILES "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/action/FollowPoseTrajectory.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller/msg" TYPE FILE FILES
    "/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg/FollowPoseTrajectoryAction.msg"
    "/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg/FollowPoseTrajectoryActionGoal.msg"
    "/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg/FollowPoseTrajectoryActionResult.msg"
    "/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg/FollowPoseTrajectoryActionFeedback.msg"
    "/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg/FollowPoseTrajectoryGoal.msg"
    "/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg/FollowPoseTrajectoryResult.msg"
    "/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg/FollowPoseTrajectoryFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller/cmake" TYPE FILE FILES "/home/josh/catkin_ws_pose_traj_controller/build/pose_trajectory_controller/catkin_generated/installspace/pose_trajectory_controller-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/josh/catkin_ws_pose_traj_controller/devel/include/pose_trajectory_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/josh/catkin_ws_pose_traj_controller/devel/share/roseus/ros/pose_trajectory_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/josh/catkin_ws_pose_traj_controller/devel/share/common-lisp/ros/pose_trajectory_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/josh/catkin_ws_pose_traj_controller/devel/share/gennodejs/ros/pose_trajectory_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/josh/catkin_ws_pose_traj_controller/devel/lib/python2.7/dist-packages/pose_trajectory_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/josh/catkin_ws_pose_traj_controller/devel/lib/python2.7/dist-packages/pose_trajectory_controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/josh/catkin_ws_pose_traj_controller/build/pose_trajectory_controller/catkin_generated/installspace/pose_trajectory_controller.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller/cmake" TYPE FILE FILES "/home/josh/catkin_ws_pose_traj_controller/build/pose_trajectory_controller/catkin_generated/installspace/pose_trajectory_controller-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller/cmake" TYPE FILE FILES
    "/home/josh/catkin_ws_pose_traj_controller/build/pose_trajectory_controller/catkin_generated/installspace/pose_trajectory_controllerConfig.cmake"
    "/home/josh/catkin_ws_pose_traj_controller/build/pose_trajectory_controller/catkin_generated/installspace/pose_trajectory_controllerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller" TYPE FILE FILES "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pose_trajectory_controller" TYPE DIRECTORY FILES "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/include/pose_trajectory_controller/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/trajectory_interface/" TYPE DIRECTORY FILES "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/include/trajectory_interface/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_trajectory_controller.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_trajectory_controller.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_trajectory_controller.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/josh/catkin_ws_pose_traj_controller/devel/lib/libpose_trajectory_controller.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_trajectory_controller.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_trajectory_controller.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_trajectory_controller.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/josh/catkin_ws_tmp/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpose_trajectory_controller.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pose_trajectory_controller" TYPE FILE FILES "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/pose_trajectory_controller_plugins.xml")
endif()

