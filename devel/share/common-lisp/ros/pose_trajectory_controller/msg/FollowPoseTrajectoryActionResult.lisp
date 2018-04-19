; Auto-generated. Do not edit!


(cl:in-package pose_trajectory_controller-msg)


;//! \htmlinclude FollowPoseTrajectoryActionResult.msg.html

(cl:defclass <FollowPoseTrajectoryActionResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (result
    :reader result
    :initarg :result
    :type pose_trajectory_controller-msg:FollowPoseTrajectoryResult
    :initform (cl:make-instance 'pose_trajectory_controller-msg:FollowPoseTrajectoryResult)))
)

(cl:defclass FollowPoseTrajectoryActionResult (<FollowPoseTrajectoryActionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPoseTrajectoryActionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPoseTrajectoryActionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_trajectory_controller-msg:<FollowPoseTrajectoryActionResult> is deprecated: use pose_trajectory_controller-msg:FollowPoseTrajectoryActionResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowPoseTrajectoryActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:header-val is deprecated.  Use pose_trajectory_controller-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <FollowPoseTrajectoryActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:status-val is deprecated.  Use pose_trajectory_controller-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FollowPoseTrajectoryActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:result-val is deprecated.  Use pose_trajectory_controller-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPoseTrajectoryActionResult>) ostream)
  "Serializes a message object of type '<FollowPoseTrajectoryActionResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPoseTrajectoryActionResult>) istream)
  "Deserializes a message object of type '<FollowPoseTrajectoryActionResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPoseTrajectoryActionResult>)))
  "Returns string type for a message object of type '<FollowPoseTrajectoryActionResult>"
  "pose_trajectory_controller/FollowPoseTrajectoryActionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPoseTrajectoryActionResult)))
  "Returns string type for a message object of type 'FollowPoseTrajectoryActionResult"
  "pose_trajectory_controller/FollowPoseTrajectoryActionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPoseTrajectoryActionResult>)))
  "Returns md5sum for a message object of type '<FollowPoseTrajectoryActionResult>"
  "c4fb3b000dc9da4fd99699380efcc5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPoseTrajectoryActionResult)))
  "Returns md5sum for a message object of type 'FollowPoseTrajectoryActionResult"
  "c4fb3b000dc9da4fd99699380efcc5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPoseTrajectoryActionResult>)))
  "Returns full string definition for message of type '<FollowPoseTrajectoryActionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%FollowPoseTrajectoryResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pose_trajectory_controller/FollowPoseTrajectoryResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%~%# Human readable description of the error code. Contains complementary~%# information that is especially useful when execution fails, for instance:~%# - INVALID_GOAL: The reason for the invalid goal (e.g., the requested~%#   trajectory is in the past).~%# - INVALID_JOINTS: The mismatch between the expected controller joints~%#   and those provided in the goal.~%# - PATH_TOLERANCE_VIOLATED and GOAL_TOLERANCE_VIOLATED: Which joint~%#   violated which tolerance, and by how much.~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPoseTrajectoryActionResult)))
  "Returns full string definition for message of type 'FollowPoseTrajectoryActionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%FollowPoseTrajectoryResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: pose_trajectory_controller/FollowPoseTrajectoryResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%~%# Human readable description of the error code. Contains complementary~%# information that is especially useful when execution fails, for instance:~%# - INVALID_GOAL: The reason for the invalid goal (e.g., the requested~%#   trajectory is in the past).~%# - INVALID_JOINTS: The mismatch between the expected controller joints~%#   and those provided in the goal.~%# - PATH_TOLERANCE_VIOLATED and GOAL_TOLERANCE_VIOLATED: Which joint~%#   violated which tolerance, and by how much.~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPoseTrajectoryActionResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPoseTrajectoryActionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPoseTrajectoryActionResult
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))