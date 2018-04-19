;; Auto-generated. Do not edit!


(when (boundp 'pose_trajectory_controller::FollowPoseTrajectoryGoal)
  (if (not (find-package "POSE_TRAJECTORY_CONTROLLER"))
    (make-package "POSE_TRAJECTORY_CONTROLLER"))
  (shadow 'FollowPoseTrajectoryGoal (find-package "POSE_TRAJECTORY_CONTROLLER")))
(unless (find-package "POSE_TRAJECTORY_CONTROLLER::FOLLOWPOSETRAJECTORYGOAL")
  (make-package "POSE_TRAJECTORY_CONTROLLER::FOLLOWPOSETRAJECTORYGOAL"))

(in-package "ROS")
;;//! \htmlinclude FollowPoseTrajectoryGoal.msg.html


(defclass pose_trajectory_controller::FollowPoseTrajectoryGoal
  :super ros::object
  :slots (_trajectory _path_tolerance _goal_tolerance _goal_time_tolerance ))

(defmethod pose_trajectory_controller::FollowPoseTrajectoryGoal
  (:init
   (&key
    ((:trajectory __trajectory) (instance pose_trajectory_controller::PoseTrajectory :init))
    ((:path_tolerance __path_tolerance) (let (r) (dotimes (i 0) (push (instance pose_trajectory_controller::AxisTolerance :init) r)) r))
    ((:goal_tolerance __goal_tolerance) (let (r) (dotimes (i 0) (push (instance pose_trajectory_controller::AxisTolerance :init) r)) r))
    ((:goal_time_tolerance __goal_time_tolerance) (instance ros::time :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   (setq _path_tolerance __path_tolerance)
   (setq _goal_tolerance __goal_tolerance)
   (setq _goal_time_tolerance __goal_time_tolerance)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:path_tolerance
   (&rest __path_tolerance)
   (if (keywordp (car __path_tolerance))
       (send* _path_tolerance __path_tolerance)
     (progn
       (if __path_tolerance (setq _path_tolerance (car __path_tolerance)))
       _path_tolerance)))
  (:goal_tolerance
   (&rest __goal_tolerance)
   (if (keywordp (car __goal_tolerance))
       (send* _goal_tolerance __goal_tolerance)
     (progn
       (if __goal_tolerance (setq _goal_tolerance (car __goal_tolerance)))
       _goal_tolerance)))
  (:goal_time_tolerance
   (&optional __goal_time_tolerance)
   (if __goal_time_tolerance (setq _goal_time_tolerance __goal_time_tolerance)) _goal_time_tolerance)
  (:serialization-length
   ()
   (+
    ;; pose_trajectory_controller/PoseTrajectory _trajectory
    (send _trajectory :serialization-length)
    ;; pose_trajectory_controller/AxisTolerance[] _path_tolerance
    (apply #'+ (send-all _path_tolerance :serialization-length)) 4
    ;; pose_trajectory_controller/AxisTolerance[] _goal_tolerance
    (apply #'+ (send-all _goal_tolerance :serialization-length)) 4
    ;; duration _goal_time_tolerance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pose_trajectory_controller/PoseTrajectory _trajectory
       (send _trajectory :serialize s)
     ;; pose_trajectory_controller/AxisTolerance[] _path_tolerance
     (write-long (length _path_tolerance) s)
     (dolist (elem _path_tolerance)
       (send elem :serialize s)
       )
     ;; pose_trajectory_controller/AxisTolerance[] _goal_tolerance
     (write-long (length _goal_tolerance) s)
     (dolist (elem _goal_tolerance)
       (send elem :serialize s)
       )
     ;; duration _goal_time_tolerance
       (write-long (send _goal_time_tolerance :sec) s) (write-long (send _goal_time_tolerance :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pose_trajectory_controller/PoseTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;; pose_trajectory_controller/AxisTolerance[] _path_tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_tolerance (let (r) (dotimes (i n) (push (instance pose_trajectory_controller::AxisTolerance :init) r)) r))
     (dolist (elem- _path_tolerance)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pose_trajectory_controller/AxisTolerance[] _goal_tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_tolerance (let (r) (dotimes (i n) (push (instance pose_trajectory_controller::AxisTolerance :init) r)) r))
     (dolist (elem- _goal_tolerance)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; duration _goal_time_tolerance
     (send _goal_time_tolerance :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _goal_time_tolerance :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pose_trajectory_controller::FollowPoseTrajectoryGoal :md5sum-) "8f316eb647f63fa701471fe0fb5ee73a")
(setf (get pose_trajectory_controller::FollowPoseTrajectoryGoal :datatype-) "pose_trajectory_controller/FollowPoseTrajectoryGoal")
(setf (get pose_trajectory_controller::FollowPoseTrajectoryGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# The pose trajectory to follow
pose_trajectory_controller/PoseTrajectory trajectory

# Tolerances for the trajectory.  If the measured joint values fall
# outside the tolerances the trajectory goal is aborted.  Any
# tolerances that are not specified (by being omitted or set to 0) are
# set to the defaults for the action server (often taken from the
# parameter server).

# Leave the tolerances in terms of joints for now to ease transition,
# we can't get FK of the SP anyway so it doesn't really matter.

# Tolerances applied to the joints as the trajectory is executed.  If
# violated, the goal aborts with error_code set to
# PATH_TOLERANCE_VIOLATED.
pose_trajectory_controller/AxisTolerance[] path_tolerance

# To report success, the joints must be within goal_tolerance of the
# final trajectory value.  The goal must be achieved by time the
# trajectory ends plus goal_time_tolerance.  (goal_time_tolerance
# allows some leeway in time, so that the trajectory goal can still
# succeed even if the joints reach the goal some time after the
# precise end time of the trajectory).
#
# If the joints are not within goal_tolerance after \"trajectory finish
# time\" + goal_time_tolerance, the goal aborts with error_code set to
# GOAL_TOLERANCE_VIOLATED
pose_trajectory_controller/AxisTolerance[] goal_tolerance
duration goal_time_tolerance


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

================================================================================
MSG: pose_trajectory_controller/AxisTolerance
# The tolerances specify the amount the position, velocity, and
# accelerations can vary from the setpoints.  For example, in the case
# of trajectory control, when the actual position varies beyond
# (desired position + position tolerance), the trajectory goal may
# abort.
#
# There are two special values for tolerances:
#  * 0 - The tolerance is unspecified and will remain at whatever the default is
#  * -1 - The tolerance is \"erased\".  If there was a default, the joint will be
#         allowed to move without restriction.

string name
float64 position  # in radians or meters (for a rotary or linear axis, respectively)
float64 velocity  # in rad/sec or m/sec
float64 acceleration  # in rad/sec^2 or m/sec^2

")



(provide :pose_trajectory_controller/FollowPoseTrajectoryGoal "8f316eb647f63fa701471fe0fb5ee73a")


