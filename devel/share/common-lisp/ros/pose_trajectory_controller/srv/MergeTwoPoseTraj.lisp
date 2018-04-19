; Auto-generated. Do not edit!


(cl:in-package pose_trajectory_controller-srv)


;//! \htmlinclude MergeTwoPoseTraj-request.msg.html

(cl:defclass <MergeTwoPoseTraj-request> (roslisp-msg-protocol:ros-message)
  ((traj1
    :reader traj1
    :initarg :traj1
    :type pose_trajectory_controller-msg:PoseTrajectory
    :initform (cl:make-instance 'pose_trajectory_controller-msg:PoseTrajectory))
   (traj2
    :reader traj2
    :initarg :traj2
    :type pose_trajectory_controller-msg:PoseTrajectory
    :initform (cl:make-instance 'pose_trajectory_controller-msg:PoseTrajectory)))
)

(cl:defclass MergeTwoPoseTraj-request (<MergeTwoPoseTraj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MergeTwoPoseTraj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MergeTwoPoseTraj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_trajectory_controller-srv:<MergeTwoPoseTraj-request> is deprecated: use pose_trajectory_controller-srv:MergeTwoPoseTraj-request instead.")))

(cl:ensure-generic-function 'traj1-val :lambda-list '(m))
(cl:defmethod traj1-val ((m <MergeTwoPoseTraj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-srv:traj1-val is deprecated.  Use pose_trajectory_controller-srv:traj1 instead.")
  (traj1 m))

(cl:ensure-generic-function 'traj2-val :lambda-list '(m))
(cl:defmethod traj2-val ((m <MergeTwoPoseTraj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-srv:traj2-val is deprecated.  Use pose_trajectory_controller-srv:traj2 instead.")
  (traj2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MergeTwoPoseTraj-request>) ostream)
  "Serializes a message object of type '<MergeTwoPoseTraj-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MergeTwoPoseTraj-request>) istream)
  "Deserializes a message object of type '<MergeTwoPoseTraj-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MergeTwoPoseTraj-request>)))
  "Returns string type for a service object of type '<MergeTwoPoseTraj-request>"
  "pose_trajectory_controller/MergeTwoPoseTrajRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergeTwoPoseTraj-request)))
  "Returns string type for a service object of type 'MergeTwoPoseTraj-request"
  "pose_trajectory_controller/MergeTwoPoseTrajRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MergeTwoPoseTraj-request>)))
  "Returns md5sum for a message object of type '<MergeTwoPoseTraj-request>"
  "e11fe386d4fd2c90cf60fe0b831365f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MergeTwoPoseTraj-request)))
  "Returns md5sum for a message object of type 'MergeTwoPoseTraj-request"
  "e11fe386d4fd2c90cf60fe0b831365f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MergeTwoPoseTraj-request>)))
  "Returns full string definition for message of type '<MergeTwoPoseTraj-request>"
  (cl:format cl:nil "pose_trajectory_controller/PoseTrajectory traj1~%pose_trajectory_controller/PoseTrajectory traj2~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectory~%Header header~%string[] axis_names~%PoseTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MergeTwoPoseTraj-request)))
  "Returns full string definition for message of type 'MergeTwoPoseTraj-request"
  (cl:format cl:nil "pose_trajectory_controller/PoseTrajectory traj1~%pose_trajectory_controller/PoseTrajectory traj2~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectory~%Header header~%string[] axis_names~%PoseTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MergeTwoPoseTraj-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MergeTwoPoseTraj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MergeTwoPoseTraj-request
    (cl:cons ':traj1 (traj1 msg))
    (cl:cons ':traj2 (traj2 msg))
))
;//! \htmlinclude MergeTwoPoseTraj-response.msg.html

(cl:defclass <MergeTwoPoseTraj-response> (roslisp-msg-protocol:ros-message)
  ((mergedTraj
    :reader mergedTraj
    :initarg :mergedTraj
    :type pose_trajectory_controller-msg:PoseTrajectory
    :initform (cl:make-instance 'pose_trajectory_controller-msg:PoseTrajectory))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0))
)

(cl:defclass MergeTwoPoseTraj-response (<MergeTwoPoseTraj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MergeTwoPoseTraj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MergeTwoPoseTraj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_trajectory_controller-srv:<MergeTwoPoseTraj-response> is deprecated: use pose_trajectory_controller-srv:MergeTwoPoseTraj-response instead.")))

(cl:ensure-generic-function 'mergedTraj-val :lambda-list '(m))
(cl:defmethod mergedTraj-val ((m <MergeTwoPoseTraj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-srv:mergedTraj-val is deprecated.  Use pose_trajectory_controller-srv:mergedTraj instead.")
  (mergedTraj m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MergeTwoPoseTraj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-srv:error_code-val is deprecated.  Use pose_trajectory_controller-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MergeTwoPoseTraj-response>)))
    "Constants for message type '<MergeTwoPoseTraj-response>"
  '((:SUCCESSFUL . 0)
    (:EMPTY_TRAJECTORIES . -1)
    (:INVALID_TRAJECTORIES . -2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MergeTwoPoseTraj-response)))
    "Constants for message type 'MergeTwoPoseTraj-response"
  '((:SUCCESSFUL . 0)
    (:EMPTY_TRAJECTORIES . -1)
    (:INVALID_TRAJECTORIES . -2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MergeTwoPoseTraj-response>) ostream)
  "Serializes a message object of type '<MergeTwoPoseTraj-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mergedTraj) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MergeTwoPoseTraj-response>) istream)
  "Deserializes a message object of type '<MergeTwoPoseTraj-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mergedTraj) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MergeTwoPoseTraj-response>)))
  "Returns string type for a service object of type '<MergeTwoPoseTraj-response>"
  "pose_trajectory_controller/MergeTwoPoseTrajResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergeTwoPoseTraj-response)))
  "Returns string type for a service object of type 'MergeTwoPoseTraj-response"
  "pose_trajectory_controller/MergeTwoPoseTrajResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MergeTwoPoseTraj-response>)))
  "Returns md5sum for a message object of type '<MergeTwoPoseTraj-response>"
  "e11fe386d4fd2c90cf60fe0b831365f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MergeTwoPoseTraj-response)))
  "Returns md5sum for a message object of type 'MergeTwoPoseTraj-response"
  "e11fe386d4fd2c90cf60fe0b831365f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MergeTwoPoseTraj-response>)))
  "Returns full string definition for message of type '<MergeTwoPoseTraj-response>"
  (cl:format cl:nil "pose_trajectory_controller/PoseTrajectory mergedTraj~%~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 EMPTY_TRAJECTORIES = -1~%int32 INVALID_TRAJECTORIES = -2~%~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectory~%Header header~%string[] axis_names~%PoseTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MergeTwoPoseTraj-response)))
  "Returns full string definition for message of type 'MergeTwoPoseTraj-response"
  (cl:format cl:nil "pose_trajectory_controller/PoseTrajectory mergedTraj~%~%int32 error_code~%int32 SUCCESSFUL = 0~%int32 EMPTY_TRAJECTORIES = -1~%int32 INVALID_TRAJECTORIES = -2~%~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectory~%Header header~%string[] axis_names~%PoseTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pose_trajectory_controller/PoseTrajectoryPoint~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%~%duration  time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MergeTwoPoseTraj-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mergedTraj))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MergeTwoPoseTraj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MergeTwoPoseTraj-response
    (cl:cons ':mergedTraj (mergedTraj msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MergeTwoPoseTraj)))
  'MergeTwoPoseTraj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MergeTwoPoseTraj)))
  'MergeTwoPoseTraj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergeTwoPoseTraj)))
  "Returns string type for a service object of type '<MergeTwoPoseTraj>"
  "pose_trajectory_controller/MergeTwoPoseTraj")