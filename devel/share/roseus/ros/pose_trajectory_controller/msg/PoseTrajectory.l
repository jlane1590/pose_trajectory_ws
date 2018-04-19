;; Auto-generated. Do not edit!


(when (boundp 'pose_trajectory_controller::PoseTrajectory)
  (if (not (find-package "POSE_TRAJECTORY_CONTROLLER"))
    (make-package "POSE_TRAJECTORY_CONTROLLER"))
  (shadow 'PoseTrajectory (find-package "POSE_TRAJECTORY_CONTROLLER")))
(unless (find-package "POSE_TRAJECTORY_CONTROLLER::POSETRAJECTORY")
  (make-package "POSE_TRAJECTORY_CONTROLLER::POSETRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude PoseTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_trajectory_controller::PoseTrajectory
  :super ros::object
  :slots (_header _axis_names _points ))

(defmethod pose_trajectory_controller::PoseTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:axis_names __axis_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance pose_trajectory_controller::PoseTrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _axis_names __axis_names)
   (setq _points __points)
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
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _axis_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _axis_names)) 4
    ;; pose_trajectory_controller/PoseTrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
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
     ;; pose_trajectory_controller/PoseTrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
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
   ;; pose_trajectory_controller/PoseTrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance pose_trajectory_controller::PoseTrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pose_trajectory_controller::PoseTrajectory :md5sum-) "bc871fc6532ea27a94f9a6ccf4ea336b")
(setf (get pose_trajectory_controller::PoseTrajectory :datatype-) "pose_trajectory_controller/PoseTrajectory")
(setf (get pose_trajectory_controller::PoseTrajectory :definition-)
      "Header header
string[] axis_names
PoseTrajectoryPoint[] points

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



(provide :pose_trajectory_controller/PoseTrajectory "bc871fc6532ea27a94f9a6ccf4ea336b")


