;; Auto-generated. Do not edit!


(when (boundp 'pose_trajectory_controller::PoseTolerance)
  (if (not (find-package "POSE_TRAJECTORY_CONTROLLER"))
    (make-package "POSE_TRAJECTORY_CONTROLLER"))
  (shadow 'PoseTolerance (find-package "POSE_TRAJECTORY_CONTROLLER")))
(unless (find-package "POSE_TRAJECTORY_CONTROLLER::POSETOLERANCE")
  (make-package "POSE_TRAJECTORY_CONTROLLER::POSETOLERANCE"))

(in-package "ROS")
;;//! \htmlinclude PoseTolerance.msg.html


(defclass pose_trajectory_controller::PoseTolerance
  :super ros::object
  :slots (_name _position _velocity _acceleration ))

(defmethod pose_trajectory_controller::PoseTolerance
  (:init
   (&key
    ((:name __name) "")
    ((:position __position) (instance pose_trajectory_controller::EulerPose :init))
    ((:velocity __velocity) (instance pose_trajectory_controller::EulerPose :init))
    ((:acceleration __acceleration) (instance pose_trajectory_controller::EulerPose :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; pose_trajectory_controller/EulerPose _position
    (send _position :serialization-length)
    ;; pose_trajectory_controller/EulerPose _velocity
    (send _velocity :serialization-length)
    ;; pose_trajectory_controller/EulerPose _acceleration
    (send _acceleration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; pose_trajectory_controller/EulerPose _position
       (send _position :serialize s)
     ;; pose_trajectory_controller/EulerPose _velocity
       (send _velocity :serialize s)
     ;; pose_trajectory_controller/EulerPose _acceleration
       (send _acceleration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; pose_trajectory_controller/EulerPose _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; pose_trajectory_controller/EulerPose _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; pose_trajectory_controller/EulerPose _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;;
   self)
  )

(setf (get pose_trajectory_controller::PoseTolerance :md5sum-) "b6c811dc775d1a1107f86bf842c6228e")
(setf (get pose_trajectory_controller::PoseTolerance :datatype-) "pose_trajectory_controller/PoseTolerance")
(setf (get pose_trajectory_controller::PoseTolerance :definition-)
      "# The tolerances specify the amount the position, velocity, and
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
EulerPose position  # in radians or meters (for a revolute or prismatic joint, respectively)
EulerPose velocity  # in rad/sec or m/sec
EulerPose acceleration  # in rad/sec^2 or m/sec^2

================================================================================
MSG: pose_trajectory_controller/EulerPose
float64 x
float64 y
float64 z
float64 r
float64 p
float64 w

")



(provide :pose_trajectory_controller/PoseTolerance "b6c811dc775d1a1107f86bf842c6228e")


