;; Auto-generated. Do not edit!


(when (boundp 'pose_trajectory_controller::PoseTrajectoryControllerState)
  (if (not (find-package "POSE_TRAJECTORY_CONTROLLER"))
    (make-package "POSE_TRAJECTORY_CONTROLLER"))
  (shadow 'PoseTrajectoryControllerState (find-package "POSE_TRAJECTORY_CONTROLLER")))
(unless (find-package "POSE_TRAJECTORY_CONTROLLER::POSETRAJECTORYCONTROLLERSTATE")
  (make-package "POSE_TRAJECTORY_CONTROLLER::POSETRAJECTORYCONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude PoseTrajectoryControllerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_trajectory_controller::PoseTrajectoryControllerState
  :super ros::object
  :slots (_header _axis_names _desired _actual _error ))

(defmethod pose_trajectory_controller::PoseTrajectoryControllerState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:axis_names __axis_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:desired __desired) (instance pose_trajectory_controller::PoseTrajectoryPoint :init))
    ((:actual __actual) (instance pose_trajectory_controller::PoseTrajectoryPoint :init))
    ((:error __error) (instance pose_trajectory_controller::PoseTrajectoryPoint :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _axis_names __axis_names)
   (setq _desired __desired)
   (setq _actual __actual)
   (setq _error __error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:axis_names
   (&optional __axis_names)
   (if __axis_names (setq _axis_names __axis_names)) _axis_names)
  (:desired
   (&rest __desired)
   (if (keywordp (car __desired))
       (send* _desired __desired)
     (progn
       (if __desired (setq _desired (car __desired)))
       _desired)))
  (:actual
   (&rest __actual)
   (if (keywordp (car __actual))
       (send* _actual __actual)
     (progn
       (if __actual (setq _actual (car __actual)))
       _actual)))
  (:error
   (&rest __error)
   (if (keywordp (car __error))
       (send* _error __error)
     (progn
       (if __error (setq _error (car __error)))
       _error)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _axis_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _axis_names)) 4
    ;; pose_trajectory_controller/PoseTrajectoryPoint _desired
    (send _desired :serialization-length)
    ;; pose_trajectory_controller/PoseTrajectoryPoint _actual
    (send _actual :serialization-length)
    ;; pose_trajectory_controller/PoseTrajectoryPoint _error
    (send _error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _axis_names
     (write-long (length _axis_names) s)
     (dolist (elem _axis_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; pose_trajectory_controller/PoseTrajectoryPoint _desired
       (send _desired :serialize s)
     ;; pose_trajectory_controller/PoseTrajectoryPoint _actual
       (send _actual :serialize s)
     ;; pose_trajectory_controller/PoseTrajectoryPoint _error
       (send _error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _axis_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _axis_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _axis_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; pose_trajectory_controller/PoseTrajectoryPoint _desired
     (send _desired :deserialize buf ptr-) (incf ptr- (send _desired :serialization-length))
   ;; pose_trajectory_controller/PoseTrajectoryPoint _actual
     (send _actual :deserialize buf ptr-) (incf ptr- (send _actual :serialization-length))
   ;; pose_trajectory_controller/PoseTrajectoryPoint _error
     (send _error :deserialize buf ptr-) (incf ptr- (send _error :serialization-length))
   ;;
   self)
  )

(setf (get pose_trajectory_controller::PoseTrajectoryControllerState :md5sum-) "6899e852098394fc0555a785cf9f2c05")
(setf (get pose_trajectory_controller::PoseTrajectoryControllerState :datatype-) "pose_trajectory_controller/PoseTrajectoryControllerState")
(setf (get pose_trajectory_controller::PoseTrajectoryControllerState :definition-)
      "Header header
string[] axis_names
PoseTrajectoryPoint desired
PoseTrajectoryPoint actual
PoseTrajectoryPoint error  # Redundant, but useful

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: pose_trajectory_controller/PoseTrajectoryPoint
float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort

duration  time_from_start

")



(provide :pose_trajectory_controller/PoseTrajectoryControllerState "6899e852098394fc0555a785cf9f2c05")

