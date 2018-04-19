;; Auto-generated. Do not edit!


(when (boundp 'pose_trajectory_controller::MergeTwoPoseTraj)
  (if (not (find-package "POSE_TRAJECTORY_CONTROLLER"))
    (make-package "POSE_TRAJECTORY_CONTROLLER"))
  (shadow 'MergeTwoPoseTraj (find-package "POSE_TRAJECTORY_CONTROLLER")))
(unless (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJ")
  (make-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJ"))
(unless (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJREQUEST")
  (make-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJREQUEST"))
(unless (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE")
  (make-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE"))

(in-package "ROS")





(defclass pose_trajectory_controller::MergeTwoPoseTrajRequest
  :super ros::object
  :slots (_traj1 _traj2 ))

(defmethod pose_trajectory_controller::MergeTwoPoseTrajRequest
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

(intern "*SUCCESSFUL*" (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE"))
(shadow '*SUCCESSFUL* (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE"))
(defconstant pose_trajectory_controller::MergeTwoPoseTrajResponse::*SUCCESSFUL* 0)
(intern "*EMPTY_TRAJECTORIES*" (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE"))
(shadow '*EMPTY_TRAJECTORIES* (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE"))
(defconstant pose_trajectory_controller::MergeTwoPoseTrajResponse::*EMPTY_TRAJECTORIES* -1)
(intern "*INVALID_TRAJECTORIES*" (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE"))
(shadow '*INVALID_TRAJECTORIES* (find-package "POSE_TRAJECTORY_CONTROLLER::MERGETWOPOSETRAJRESPONSE"))
(defconstant pose_trajectory_controller::MergeTwoPoseTrajResponse::*INVALID_TRAJECTORIES* -2)
(defclass pose_trajectory_controller::MergeTwoPoseTrajResponse
  :super ros::object
  :slots (_mergedTraj _error_code ))

(defmethod pose_trajectory_controller::MergeTwoPoseTrajResponse
  (:init
   (&key
    ((:mergedTraj __mergedTraj) (instance pose_trajectory_controller::PoseTrajectory :init))
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _mergedTraj __mergedTraj)
   (setq _error_code (round __error_code))
   self)
  (:mergedTraj
   (&rest __mergedTraj)
   (if (keywordp (car __mergedTraj))
       (send* _mergedTraj __mergedTraj)
     (progn
       (if __mergedTraj (setq _mergedTraj (car __mergedTraj)))
       _mergedTraj)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; pose_trajectory_controller/PoseTrajectory _mergedTraj
    (send _mergedTraj :serialization-length)
    ;; int32 _error_code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pose_trajectory_controller/PoseTrajectory _mergedTraj
       (send _mergedTraj :serialize s)
     ;; int32 _error_code
       (write-long _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pose_trajectory_controller/PoseTrajectory _mergedTraj
     (send _mergedTraj :deserialize buf ptr-) (incf ptr- (send _mergedTraj :serialization-length))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pose_trajectory_controller::MergeTwoPoseTraj
  :super ros::object
  :slots ())

(setf (get pose_trajectory_controller::MergeTwoPoseTraj :md5sum-) "e11fe386d4fd2c90cf60fe0b831365f7")
(setf (get pose_trajectory_controller::MergeTwoPoseTraj :datatype-) "pose_trajectory_controller/MergeTwoPoseTraj")
(setf (get pose_trajectory_controller::MergeTwoPoseTraj :request) pose_trajectory_controller::MergeTwoPoseTrajRequest)
(setf (get pose_trajectory_controller::MergeTwoPoseTraj :response) pose_trajectory_controller::MergeTwoPoseTrajResponse)

(defmethod pose_trajectory_controller::MergeTwoPoseTrajRequest
  (:response () (instance pose_trajectory_controller::MergeTwoPoseTrajResponse :init)))

(setf (get pose_trajectory_controller::MergeTwoPoseTrajRequest :md5sum-) "e11fe386d4fd2c90cf60fe0b831365f7")
(setf (get pose_trajectory_controller::MergeTwoPoseTrajRequest :datatype-) "pose_trajectory_controller/MergeTwoPoseTrajRequest")
(setf (get pose_trajectory_controller::MergeTwoPoseTrajRequest :definition-)
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

int32 error_code
int32 SUCCESSFUL = 0
int32 EMPTY_TRAJECTORIES = -1
int32 INVALID_TRAJECTORIES = -2


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

(setf (get pose_trajectory_controller::MergeTwoPoseTrajResponse :md5sum-) "e11fe386d4fd2c90cf60fe0b831365f7")
(setf (get pose_trajectory_controller::MergeTwoPoseTrajResponse :datatype-) "pose_trajectory_controller/MergeTwoPoseTrajResponse")
(setf (get pose_trajectory_controller::MergeTwoPoseTrajResponse :definition-)
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

int32 error_code
int32 SUCCESSFUL = 0
int32 EMPTY_TRAJECTORIES = -1
int32 INVALID_TRAJECTORIES = -2


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



(provide :pose_trajectory_controller/MergeTwoPoseTraj "e11fe386d4fd2c90cf60fe0b831365f7")


