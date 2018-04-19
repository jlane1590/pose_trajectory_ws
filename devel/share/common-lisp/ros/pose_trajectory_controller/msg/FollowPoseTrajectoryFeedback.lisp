; Auto-generated. Do not edit!


(cl:in-package pose_trajectory_controller-msg)


;//! \htmlinclude FollowPoseTrajectoryFeedback.msg.html

(cl:defclass <FollowPoseTrajectoryFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (axis_names
    :reader axis_names
    :initarg :axis_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (desired
    :reader desired
    :initarg :desired
    :type pose_trajectory_controller-msg:PoseTrajectoryPoint
    :initform (cl:make-instance 'pose_trajectory_controller-msg:PoseTrajectoryPoint))
   (actual
    :reader actual
    :initarg :actual
    :type pose_trajectory_controller-msg:PoseTrajectoryPoint
    :initform (cl:make-instance 'pose_trajectory_controller-msg:PoseTrajectoryPoint))
   (error
    :reader error
    :initarg :error
    :type pose_trajectory_controller-msg:PoseTrajectoryPoint
    :initform (cl:make-instance 'pose_trajectory_controller-msg:PoseTrajectoryPoint)))
)

(cl:defclass FollowPoseTrajectoryFeedback (<FollowPoseTrajectoryFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowPoseTrajectoryFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowPoseTrajectoryFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_trajectory_controller-msg:<FollowPoseTrajectoryFeedback> is deprecated: use pose_trajectory_controller-msg:FollowPoseTrajectoryFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowPoseTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:header-val is deprecated.  Use pose_trajectory_controller-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'axis_names-val :lambda-list '(m))
(cl:defmethod axis_names-val ((m <FollowPoseTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:axis_names-val is deprecated.  Use pose_trajectory_controller-msg:axis_names instead.")
  (axis_names m))

(cl:ensure-generic-function 'desired-val :lambda-list '(m))
(cl:defmethod desired-val ((m <FollowPoseTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:desired-val is deprecated.  Use pose_trajectory_controller-msg:desired instead.")
  (desired m))

(cl:ensure-generic-function 'actual-val :lambda-list '(m))
(cl:defmethod actual-val ((m <FollowPoseTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:actual-val is deprecated.  Use pose_trajectory_controller-msg:actual instead.")
  (actual m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <FollowPoseTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:error-val is deprecated.  Use pose_trajectory_controller-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowPoseTrajectoryFeedback>) ostream)
  "Serializes a message object of type '<FollowPoseTrajectoryFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'axis_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'axis_names))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowPoseTrajectoryFeedback>) istream)
  "Deserializes a message object of type '<FollowPoseTrajectoryFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'axis_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'axis_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowPoseTrajectoryFeedback>)))
  "Returns string type for a message object of type '<FollowPoseTrajectoryFeedback>"
  "pose_trajectory_controller/FollowPoseTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowPoseTrajectoryFeedback)))
  "Returns string type for a message object of type 'FollowPoseTrajectoryFeedback"
  "pose_trajectory_controller/FollowPoseTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowPoseTrajectoryFeedback>)))
  "Returns md5sum for a message object of type '<FollowPoseTrajectoryFeedback>"
  "6899e852098394fc0555a785cf9f2c05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowPoseTrajectoryFeedback)))
  "Returns md5sum for a message object of type 'FollowPoseTrajectoryFeedback"
  "6899e852098394fc0555a785cf9f2c05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowPoseTrajectoryFeedback>)))
  "Returns full string definition for message of type '<FollowPoseTrajectoryFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%string[] axis_names~%~%# Since we can't do FK on the SP we have to just assume the platform is~%# where we command it, so error will always be zero. Even though that may~%# not be true.~%pose_trajectory_controller/PoseTrajectoryPoint desired~%pose_trajectory_controller/PoseTrajectoryPoint actual~%pose_trajectory_controller/PoseTrajectoryPoint error~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowPoseTrajectoryFeedback)))
  "Returns full string definition for message of type 'FollowPoseTrajectoryFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%Header header~%string[] axis_names~%~%# Since we can't do FK on the SP we have to just assume the platform is~%# where we command it, so error will always be zero. Even though that may~%# not be true.~%pose_trajectory_controller/PoseTrajectoryPoint desired~%pose_trajectory_controller/PoseTrajectoryPoint actual~%pose_trajectory_controller/PoseTrajectoryPoint error~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowPoseTrajectoryFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'axis_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowPoseTrajectoryFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowPoseTrajectoryFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':axis_names (axis_names msg))
    (cl:cons ':desired (desired msg))
    (cl:cons ':actual (actual msg))
    (cl:cons ':error (error msg))
))
