; Auto-generated. Do not edit!


(cl:in-package pose_trajectory_controller-msg)


;//! \htmlinclude PoseTolerance.msg.html

(cl:defclass <PoseTolerance> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type pose_trajectory_controller-msg:EulerPose
    :initform (cl:make-instance 'pose_trajectory_controller-msg:EulerPose))
   (velocity
    :reader velocity
    :initarg :velocity
    :type pose_trajectory_controller-msg:EulerPose
    :initform (cl:make-instance 'pose_trajectory_controller-msg:EulerPose))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type pose_trajectory_controller-msg:EulerPose
    :initform (cl:make-instance 'pose_trajectory_controller-msg:EulerPose)))
)

(cl:defclass PoseTolerance (<PoseTolerance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseTolerance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseTolerance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_trajectory_controller-msg:<PoseTolerance> is deprecated: use pose_trajectory_controller-msg:PoseTolerance instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PoseTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:name-val is deprecated.  Use pose_trajectory_controller-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PoseTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:position-val is deprecated.  Use pose_trajectory_controller-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PoseTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:velocity-val is deprecated.  Use pose_trajectory_controller-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <PoseTolerance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_trajectory_controller-msg:acceleration-val is deprecated.  Use pose_trajectory_controller-msg:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseTolerance>) ostream)
  "Serializes a message object of type '<PoseTolerance>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseTolerance>) istream)
  "Deserializes a message object of type '<PoseTolerance>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseTolerance>)))
  "Returns string type for a message object of type '<PoseTolerance>"
  "pose_trajectory_controller/PoseTolerance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseTolerance)))
  "Returns string type for a message object of type 'PoseTolerance"
  "pose_trajectory_controller/PoseTolerance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseTolerance>)))
  "Returns md5sum for a message object of type '<PoseTolerance>"
  "b6c811dc775d1a1107f86bf842c6228e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseTolerance)))
  "Returns md5sum for a message object of type 'PoseTolerance"
  "b6c811dc775d1a1107f86bf842c6228e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseTolerance>)))
  "Returns full string definition for message of type '<PoseTolerance>"
  (cl:format cl:nil "# The tolerances specify the amount the position, velocity, and~%# accelerations can vary from the setpoints.  For example, in the case~%# of trajectory control, when the actual position varies beyond~%# (desired position + position tolerance), the trajectory goal may~%# abort.~%#~%# There are two special values for tolerances:~%#  * 0 - The tolerance is unspecified and will remain at whatever the default is~%#  * -1 - The tolerance is \"erased\".  If there was a default, the joint will be~%#         allowed to move without restriction.~%~%string name~%EulerPose position  # in radians or meters (for a revolute or prismatic joint, respectively)~%EulerPose velocity  # in rad/sec or m/sec~%EulerPose acceleration  # in rad/sec^2 or m/sec^2~%~%================================================================================~%MSG: pose_trajectory_controller/EulerPose~%float64 x~%float64 y~%float64 z~%float64 r~%float64 p~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseTolerance)))
  "Returns full string definition for message of type 'PoseTolerance"
  (cl:format cl:nil "# The tolerances specify the amount the position, velocity, and~%# accelerations can vary from the setpoints.  For example, in the case~%# of trajectory control, when the actual position varies beyond~%# (desired position + position tolerance), the trajectory goal may~%# abort.~%#~%# There are two special values for tolerances:~%#  * 0 - The tolerance is unspecified and will remain at whatever the default is~%#  * -1 - The tolerance is \"erased\".  If there was a default, the joint will be~%#         allowed to move without restriction.~%~%string name~%EulerPose position  # in radians or meters (for a revolute or prismatic joint, respectively)~%EulerPose velocity  # in rad/sec or m/sec~%EulerPose acceleration  # in rad/sec^2 or m/sec^2~%~%================================================================================~%MSG: pose_trajectory_controller/EulerPose~%float64 x~%float64 y~%float64 z~%float64 r~%float64 p~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseTolerance>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseTolerance>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseTolerance
    (cl:cons ':name (name msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
