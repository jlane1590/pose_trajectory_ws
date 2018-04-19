;; Auto-generated. Do not edit!


(when (boundp 'pose_trajectory_merger::MergeTwoPoseTraj)
  (if (not (find-package "POSE_TRAJECTORY_MERGER"))
    (make-package "POSE_TRAJECTORY_MERGER"))
  (shadow 'MergeTwoPoseTraj (find-package "POSE_TRAJECTORY_MERGER")))
(unless (find-package "POSE_TRAJECTORY_MERGER::MERGETWOPOSETRAJ")
  (make-package "POSE_TRAJECTORY_MERGER::MERGETWOPOSETRAJ"))
(unless (find-package "POSE_TRAJECTORY_MERGER::MERGETWOPOSETRAJREQUEST")
  (make-package "POSE_TRAJECTORY_MERGER::MERGETWOPOSETRAJREQUEST"))
(unless (find-package "POSE_TRAJECTORY_MERGER::MERGETWOPOSETRAJRESPONSE")
  (make-package "POSE_TRAJECTORY_MERGER::MERGETWOPOSETRAJRESPONSE"))

(in-package "ROS")

(if (not (find-package "POSE_TRAJECTORY_CONTROLLER"))
  (ros::roseus-add-msgs "pose_trajectory_controller"))


(if (not (find-package "POSE_TRAJECTORY_CONTROLLER"))
  (ros::roseus-add-msgs "pose_trajectory_controller"))


(defclass pose_trajectory_merger::MergeTwoPoseTrajRequest
  :super ros::object
  :slots (_traj1 _traj2 ))

(defmethod pose_trajectory_merger::MergeTwoPoseTrajRequest
  (:init
   (&key
    ((:traj1 __traj1) (instance pose_trajectory_controller::PoseTrajectory :init))
    ((:traj2 __traj2) (instance pose_trajectory_controller::PoseTrajectory :init))
    )
   (send-super :init)
   (setq _traj1 __traj1)
   (setq _traj2 __traj2)
   self)
  (:traj1
   (&rest __traj1)
   (if (keywordp (car __traj1))
       (send* _traj1 __traj1)
     (progn
       (if __traj1 (setq _traj1 (car __traj1)))
       _traj1)))
  (:traj2
   (&rest __traj2)
   (if (keywordp (car __traj2))
       (send* _traj2 __traj2)
     (progn
       (if __traj2 (setq _traj2 (car __traj2)))
       _traj2)))
  (:serialization-length
   ()
   (+
    ;; pose_trajectory_controller/PoseTrajectory _traj1
    (send _traj1 :serialization-length)
    ;; pose_trajectory_controller/PoseTrajectory _traj2
    (send _traj2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pose_trajectory_controller/PoseTrajectory _traj1
       (send _traj1 :serialize s)
     ;; pose_trajectory_controller/PoseTrajectory _traj2
       (send _traj2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pose_trajectory_controller/PoseTrajectory _traj1
     (send _traj1 :deserialize buf ptr-) (incf ptr- (send _traj1 :serialization-length))
   ;; pose_trajectory_controller/PoseTrajectory _traj2
     (send _traj2 :deserialize buf ptr-) (incf ptr- (send _traj2 :serialization-length))
   ;;
   self)
  )

(defclass pose_trajectory_merger::MergeTwoPoseTrajResponse
  :super ros::object
  :slots (_mergedTraj ))

(defmethod pose_trajectory_merger::MergeTwoPoseTrajResponse
  (:init
   (&key
    ((:mergedTraj __mergedTraj) (instance pose_trajectory_controller::PoseTrajectory :init))
    )
   (send-super :init)
   (setq _mergedTraj __mergedTraj)
   self)
  (:mergedTraj
   (&rest __mergedTraj)
   (if (keywordp (car __mergedTraj))
       (send* _mergedTraj __mergedTraj)
     (progn
       (if __mergedTraj (setq _mergedTraj (car __mergedTraj)))
       _mergedTraj)))
  (:serialization-length
   ()
   (+
    ;; pose_trajectory_controller/PoseTrajectory _mergedTraj
    (send _mergedTraj :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pose_trajectory_controller/PoseTrajectory _mergedTraj
       (send _mergedTraj :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pose_trajectory_controller/PoseTrajectory _mergedTraj
     (send _mergedTraj :deserialize buf ptr-) (incf ptr- (send _mergedTraj :serialization-length))
   ;;
   self)
  )

(defclass pose_trajectory_merger::MergeTwoPoseTraj
  :super ros::object
  :slots ())

(setf (get pose_trajectory_merger::MergeTwoPoseTraj :md5sum-) "fb374ce408455dda151172e11b9e5993")
(setf (get pose_trajectory_merger::MergeTwoPoseTraj :datatype-) "pose_trajectory_merger/MergeTwoPoseTraj")
(setf (get pose_trajectory_merger::MergeTwoPoseTraj :request) pose_trajectory_merger::MergeTwoPoseTrajRequest)
(setf (get pose_trajectory_merger::MergeTwoPoseTraj :response) pose_trajectory_merger::MergeTwoPoseTrajResponse)

(defmethod pose_trajectory_merger::MergeTwoPoseTrajRequest
  (:response () (instance pose_trajectory_merger::MergeTwoPoseTrajResponse :init)))

(setf (get pose_trajectory_merger::MergeTwoPoseTrajRequest :md5sum-) "fb374ce408455dda151172e11b9e5993")
(setf (get pose_trajectory_merger::MergeTwoPoseTrajRequest :datatype-) "pose_trajectory_merger/MergeTwoPoseTrajRequest")
(setf (get pose_trajectory_merger::MergeTwoPoseTrajRequest :definition-)
      "pose_trajectory_controller/PoseTrajectory traj1
pose_trajectory_controller/PoseTrajectory traj2

================================================================================
MSG: pose_trajectory_controller/PoseTrajectory
Header header
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
---
pose_trajectory_controller/PoseTrajectory mergedTraj


================================================================================
MSG: pose_trajectory_controller/PoseTrajectory
Header header
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

(setf (get pose_trajectory_merger::MergeTwoPoseTrajResponse :md5sum-) "fb374ce408455dda151172e11b9e5993")
(setf (get pose_trajectory_merger::MergeTwoPoseTrajResponse :datatype-) "pose_trajectory_merger/MergeTwoPoseTrajResponse")
(setf (get pose_trajectory_merger::MergeTwoPoseTrajResponse :definition-)
      "pose_trajectory_controller/PoseTrajectory traj1
pose_trajectory_controller/PoseTrajectory traj2

================================================================================
MSG: pose_trajectory_controller/PoseTrajectory
Header header
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
---
pose_trajectory_controller/PoseTrajectory mergedTraj


================================================================================
MSG: pose_trajectory_controller/PoseTrajectory
Header header
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



(provide :pose_trajectory_merger/MergeTwoPoseTraj "fb374ce408455dda151172e11b9e5993")


