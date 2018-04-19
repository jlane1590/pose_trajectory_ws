; Auto-generated. Do not edit!


(cl:in-package pose_trajectory_controller-msg)


;//! \htmlinclude FollowPoseTrajectoryGoal.msg.html

(cl:defclass <FollowPoseTrajectoryGoal> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type pose_trajectory_controller-msg:PoseTrajectory
    :initform (cl:make-instance 'pose_trajectory_controller-msg:PoseTrajectory))
   (path_tolerance
    :reader path_tolerance
    :initarg :path_tolerance
    :type (cl:vector pose_trajectory_controller-msg:AxisTolerance)
   :initform (cl:make-array 0 :element-type 'pose_trajectory_controller-msg:AxisTolerance :initial-element (cl:make-instance 'pose_trajectory_controller-msg:AxisTolerance)))
   (goal_tolerance
    :reader goal_tolerance
    :initarg :goal_tolerance
    :type (cl:vector pose_trajectory_controller-msg:AxisTolerance)
   :initform (cl:make-array 0 :element-type 'pose_trajectory_controller-msg:AxisTolerance :initial-element (cl:make-instance 'pose_trajectory_controller-msg:AxisTolerance)))
   (goal_time_tolerance
    :reader goal_time_tolerance
    :initarg :goal_time_tolerance
    :type cl:real
    :initform 0))
)

(cl:defclass FollowPoseTrajectoryGoal (<FollowPoseTrajectoryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPoseTrajectoryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPoseTrajectoryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_trajectory_controller-msg:<FollowPoseTrajectoryGoal> is deprecated: use pose_trajectory_controller-msg:FollowPoseTrajectoryGoal instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <FollowPoseTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:trajectory-val is deprecated.  Use pose_trajectory_controller-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'path_tolerance-val :lambda-list '(m))
(cl:defmethod path_tolerance-val ((m <FollowPoseTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:path_tolerance-val is deprecated.  Use pose_trajectory_controller-msg:path_tolerance instead.")
  (path_tolerance m))

(cl:ensure-generic-function 'goal_tolerance-val :lambda-list '(m))
(cl:defmethod goal_tolerance-val ((m <FollowPoseTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:goal_tolerance-val is deprecated.  Use pose_trajectory_controller-msg:goal_tolerance instead.")
  (goal_tolerance m))

(cl:ensure-generic-function 'goal_time_tolerance-val :lambda-list '(m))
(cl:defmethod goal_time_tolerance-val ((m <FollowPoseTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:goal_time_tolerance-val is deprecated.  Use pose_trajectory_controller-msg:goal_time_tolerance instead.")
  (goal_time_tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPoseTrajectoryGoal>) ostream)
  "Serializes a message object of type '<FollowPoseTrajectoryGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_tolerance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goal_tolerance))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'goal_time_tolerance)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'goal_time_tolerance) (cl:floor (cl:slot-value msg 'goal_time_tolerance)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPoseTrajectoryGoal>) istream)
  "Deserializes a message object of type '<FollowPoseTrajectoryGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_tolerance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_tolerance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_trajectory_controller-msg:AxisTolerance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_tolerance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_tolerance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_trajectory_controller-msg:AxisTolerance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_time_tolerance) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPoseTrajectoryGoal>)))
  "Returns string type for a message object of type '<FollowPoseTrajectoryGoal>"
  "pose_trajectory_controller/FollowPoseTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPoseTrajectoryGoal)))
  "Returns string type for a message object of type 'FollowPoseTrajectoryGoal"
  "pose_trajectory_controller/FollowPoseTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPoseTrajectoryGoal>)))
  "Returns md5sum for a message object of type '<FollowPoseTrajectoryGoal>"
  "8f316eb647f63fa701471fe0fb5ee73a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPoseTrajectoryGoal)))
  "Returns md5sum for a message object of type 'FollowPoseTrajectoryGoal"
  "8f316eb647f63fa701471fe0fb5ee73a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPoseTrajectoryGoal>)))
  "Returns full string definition for message of type '<FollowPoseTrajectoryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The pose trajectory to follow~%pose_trajectory_controller/PoseTrajectory trajectory~%~%# Tolerances for the trajectory.  If the measured joint values fall~%# outside the tolerances the trajectory goal is aborted.  Any~%# tolerances that are not specified (by being omitted or set to 0) are~%# set to the defaults for the action server (often taken from the~%# parameter server).~%~%# Leave the tolerances in terms of joints for now to ease transition,~%# we can't get FK of the SP anyway so it doesn't really matter.~%~%# Tolerances applied to the joints as the trajectory is executed.  If~%# violated, the goal aborts with error_code set to~%# PATH_TOLERANCE_VIOLATED.~%pose_trajectory_controller/AxisTolerance[] path_tolerance~%~%# To report success, the joints must be within goal_tolerance of the~%# final trajectory value.  The goal must be achieved by time the~%# trajectory ends plus goal_time_tolerance.  (goal_time_tolerance~%# allows some leeway in time, so that the trajectory goal can still~%# succeed even if the joints reach the goal some time after the~%# precise end time of the trajectory).~%#~%# If the joints are not within goal_tolerance after \"trajectory finish~%# time\" + goal_time_tolerance, the goal aborts with error_code set to~%# GOAL_TOLERANCE_VIOLATED~%pose_trajectory_controller/AxisTolerance[] goal_tolerance~%duration goal_time_tolerance~%~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectory~%Header header~%string[] axis_names~%PoseTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%================================================================================~%MSG: pose_trajectory_controller/AxisTolerance~%# The tolerances specify the amount the position, velocity, and~%# accelerations can vary from the setpoints.  For example, in the case~%# of trajectory control, when the actual position varies beyond~%# (desired position + position tolerance), the trajectory goal may~%# abort.~%#~%# There are two special values for tolerances:~%#  * 0 - The tolerance is unspecified and will remain at whatever the default is~%#  * -1 - The tolerance is \"erased\".  If there was a default, the joint will be~%#         allowed to move without restriction.~%~%string name~%float64 position  # in radians or meters (for a rotary or linear axis, respectively)~%float64 velocity  # in rad/sec or m/sec~%float64 acceleration  # in rad/sec^2 or m/sec^2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPoseTrajectoryGoal)))
  "Returns full string definition for message of type 'FollowPoseTrajectoryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The pose trajectory to follow~%pose_trajectory_controller/PoseTrajectory trajectory~%~%# Tolerances for the trajectory.  If the measured joint values fall~%# outside the tolerances the trajectory goal is aborted.  Any~%# tolerances that are not specified (by being omitted or set to 0) are~%# set to the defaults for the action server (often taken from the~%# parameter server).~%~%# Leave the tolerances in terms of joints for now to ease transition,~%# we can't get FK of the SP anyway so it doesn't really matter.~%~%# Tolerances applied to the joints as the trajectory is executed.  If~%# violated, the goal aborts with error_code set to~%# PATH_TOLERANCE_VIOLATED.~%pose_trajectory_controller/AxisTolerance[] path_tolerance~%~%# To report success, the joints must be within goal_tolerance of the~%# final trajectory value.  The goal must be achieved by time the~%# trajectory ends plus goal_time_tolerance.  (goal_time_tolerance~%# allows some leeway in time, so that the trajectory goal can still~%# succeed even if the joints reach the goal some time after the~%# precise end time of the trajectory).~%#~%# If the joints are not within goal_tolerance after \"trajectory finish~%# time\" + goal_time_tolerance, the goal aborts with error_code set to~%# GOAL_TOLERANCE_VIOLATED~%pose_trajectory_controller/AxisTolerance[] goal_tolerance~%duration goal_time_tolerance~%~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectory~%Header header~%string[] axis_names~%PoseTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%================================================================================~%MSG: pose_trajectory_controller/AxisTolerance~%# The tolerances specify the amount the position, velocity, and~%# accelerations can vary from the setpoints.  For example, in the case~%# of trajectory control, when the actual position varies beyond~%# (desired position + position tolerance), the trajectory goal may~%# abort.~%#~%# There are two special values for tolerances:~%#  * 0 - The tolerance is unspecified and will remain at whatever the default is~%#  * -1 - The tolerance is \"erased\".  If there was a default, the joint will be~%#         allowed to move without restriction.~%~%string name~%float64 position  # in radians or meters (for a rotary or linear axis, respectively)~%float64 velocity  # in rad/sec or m/sec~%float64 acceleration  # in rad/sec^2 or m/sec^2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPoseTrajectoryGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_tolerance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_tolerance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPoseTrajectoryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPoseTrajectoryGoal
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':path_tolerance (path_tolerance msg))
    (cl:cons ':goal_tolerance (goal_tolerance msg))
    (cl:cons ':goal_time_tolerance (goal_time_tolerance msg))
))
