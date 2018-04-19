; Auto-generated. Do not edit!


(cl:in-package pose_trajectory_controller-msg)


;//! \htmlinclude FollowPoseTrajectoryResult.msg.html

(cl:defclass <FollowPoseTrajectoryResult> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (error_string
    :reader error_string
    :initarg :error_string
    :type cl:string
    :initform ""))
)

(cl:defclass FollowPoseTrajectoryResult (<FollowPoseTrajectoryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPoseTrajectoryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPoseTrajectoryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_trajectory_controller-msg:<FollowPoseTrajectoryResult> is deprecated: use pose_trajectory_controller-msg:FollowPoseTrajectoryResult instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <FollowPoseTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:error_code-val is deprecated.  Use pose_trajectory_controller-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_string-val :lambda-list '(m))
(cl:defmethod error_string-val ((m <FollowPoseTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:error_string-val is deprecated.  Use pose_trajectory_controller-msg:error_string instead.")
  (error_string m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FollowPoseTrajectoryResult>)))
    "Constants for message type '<FollowPoseTrajectoryResult>"
  '((:SUCCESSFUL . 0)
    (:INVALID_GOAL . -1)
    (:INVALID_JOINTS . -2)
    (:OLD_HEADER_TIMESTAMP . -3)
    (:PATH_TOLERANCE_VIOLATED . -4)
    (:GOAL_TOLERANCE_VIOLATED . -5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FollowPoseTrajectoryResult)))
    "Constants for message type 'FollowPoseTrajectoryResult"
  '((:SUCCESSFUL . 0)
    (:INVALID_GOAL . -1)
    (:INVALID_JOINTS . -2)
    (:OLD_HEADER_TIMESTAMP . -3)
    (:PATH_TOLERANCE_VIOLATED . -4)
    (:GOAL_TOLERANCE_VIOLATED . -5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPoseTrajectoryResult>) ostream)
  "Serializes a message object of type '<FollowPoseTrajectoryResult>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPoseTrajectoryResult>) istream)
  "Deserializes a message object of type '<FollowPoseTrajectoryResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPoseTrajectoryResult>)))
  "Returns string type for a message object of type '<FollowPoseTrajectoryResult>"
  "pose_trajectory_controller/FollowPoseTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPoseTrajectoryResult)))
  "Returns string type for a message object of type 'FollowPoseTrajectoryResult"
  "pose_trajectory_controller/FollowPoseTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPoseTrajectoryResult>)))
  "Returns md5sum for a message object of type '<FollowPoseTrajectoryResult>"
  "493383b18409bfb604b4e26c676401d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPoseTrajectoryResult)))
  "Returns md5sum for a message object of type 'FollowPoseTrajectoryResult"
  "493383b18409bfb604b4e26c676401d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPoseTrajectoryResult>)))
  "Returns full string definition for message of type '<FollowPoseTrajectoryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%~%# Human readable description of the error code. Contains complementary~%# information that is especially useful when execution fails, for instance:~%# - INVALID_GOAL: The reason for the invalid goal (e.g., the requested~%#   trajectory is in the past).~%# - INVALID_JOINTS: The mismatch between the expected controller joints~%#   and those provided in the goal.~%# - PATH_TOLERANCE_VIOLATED and GOAL_TOLERANCE_VIOLATED: Which joint~%#   violated which tolerance, and by how much.~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPoseTrajectoryResult)))
  "Returns full string definition for message of type 'FollowPoseTrajectoryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%~%# Human readable description of the error code. Contains complementary~%# information that is especially useful when execution fails, for instance:~%# - INVALID_GOAL: The reason for the invalid goal (e.g., the requested~%#   trajectory is in the past).~%# - INVALID_JOINTS: The mismatch between the expected controller joints~%#   and those provided in the goal.~%# - PATH_TOLERANCE_VIOLATED and GOAL_TOLERANCE_VIOLATED: Which joint~%#   violated which tolerance, and by how much.~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPoseTrajectoryResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'error_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPoseTrajectoryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPoseTrajectoryResult
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_string (error_string msg))
))
