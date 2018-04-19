# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pose_trajectory_merger: 0 messages, 1 services")

set(MSG_I_FLAGS "-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Ipose_trajectory_controller:/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg;-Ipose_trajectory_controller:/home/josh/catkin_ws_pose_traj_controller/devel/share/pose_trajectory_controller/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pose_trajectory_merger_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv" NAME_WE)
add_custom_target(_pose_trajectory_merger_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_trajectory_merger" "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv" "pose_trajectory_controller/PoseTrajectoryPoint:pose_trajectory_controller/PoseTrajectory:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pose_trajectory_merger
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv"
  "${MSG_I_FLAGS}"
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectoryPoint.msg;/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_trajectory_merger
)

### Generating Module File
_generate_module_cpp(pose_trajectory_merger
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_trajectory_merger
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pose_trajectory_merger_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pose_trajectory_merger_generate_messages pose_trajectory_merger_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv" NAME_WE)
add_dependencies(pose_trajectory_merger_generate_messages_cpp _pose_trajectory_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_trajectory_merger_gencpp)
add_dependencies(pose_trajectory_merger_gencpp pose_trajectory_merger_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_trajectory_merger_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pose_trajectory_merger
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv"
  "${MSG_I_FLAGS}"
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectoryPoint.msg;/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_trajectory_merger
)

### Generating Module File
_generate_module_eus(pose_trajectory_merger
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_trajectory_merger
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pose_trajectory_merger_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pose_trajectory_merger_generate_messages pose_trajectory_merger_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv" NAME_WE)
add_dependencies(pose_trajectory_merger_generate_messages_eus _pose_trajectory_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_trajectory_merger_geneus)
add_dependencies(pose_trajectory_merger_geneus pose_trajectory_merger_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_trajectory_merger_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pose_trajectory_merger
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv"
  "${MSG_I_FLAGS}"
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectoryPoint.msg;/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_trajectory_merger
)

### Generating Module File
_generate_module_lisp(pose_trajectory_merger
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_trajectory_merger
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pose_trajectory_merger_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pose_trajectory_merger_generate_messages pose_trajectory_merger_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv" NAME_WE)
add_dependencies(pose_trajectory_merger_generate_messages_lisp _pose_trajectory_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_trajectory_merger_genlisp)
add_dependencies(pose_trajectory_merger_genlisp pose_trajectory_merger_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_trajectory_merger_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pose_trajectory_merger
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv"
  "${MSG_I_FLAGS}"
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectoryPoint.msg;/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_trajectory_merger
)

### Generating Module File
_generate_module_nodejs(pose_trajectory_merger
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_trajectory_merger
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pose_trajectory_merger_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pose_trajectory_merger_generate_messages pose_trajectory_merger_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv" NAME_WE)
add_dependencies(pose_trajectory_merger_generate_messages_nodejs _pose_trajectory_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_trajectory_merger_gennodejs)
add_dependencies(pose_trajectory_merger_gennodejs pose_trajectory_merger_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_trajectory_merger_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pose_trajectory_merger
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv"
  "${MSG_I_FLAGS}"
  "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectoryPoint.msg;/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_controller/msg/PoseTrajectory.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_trajectory_merger
)

### Generating Module File
_generate_module_py(pose_trajectory_merger
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_trajectory_merger
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pose_trajectory_merger_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pose_trajectory_merger_generate_messages pose_trajectory_merger_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/josh/catkin_ws_pose_traj_controller/src/pose_trajectory_merger/srv/MergeTwoPoseTraj.srv" NAME_WE)
add_dependencies(pose_trajectory_merger_generate_messages_py _pose_trajectory_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_trajectory_merger_genpy)
add_dependencies(pose_trajectory_merger_genpy pose_trajectory_merger_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_trajectory_merger_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_trajectory_merger)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_trajectory_merger
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pose_trajectory_merger_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET pose_trajectory_controller_generate_messages_cpp)
  add_dependencies(pose_trajectory_merger_generate_messages_cpp pose_trajectory_controller_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_trajectory_merger)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_trajectory_merger
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pose_trajectory_merger_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET pose_trajectory_controller_generate_messages_eus)
  add_dependencies(pose_trajectory_merger_generate_messages_eus pose_trajectory_controller_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_trajectory_merger)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_trajectory_merger
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pose_trajectory_merger_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET pose_trajectory_controller_generate_messages_lisp)
  add_dependencies(pose_trajectory_merger_generate_messages_lisp pose_trajectory_controller_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_trajectory_merger)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_trajectory_merger
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pose_trajectory_merger_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET pose_trajectory_controller_generate_messages_nodejs)
  add_dependencies(pose_trajectory_merger_generate_messages_nodejs pose_trajectory_controller_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_trajectory_merger)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_trajectory_merger\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_trajectory_merger
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pose_trajectory_merger_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET pose_trajectory_controller_generate_messages_py)
  add_dependencies(pose_trajectory_merger_generate_messages_py pose_trajectory_controller_generate_messages_py)
endif()
