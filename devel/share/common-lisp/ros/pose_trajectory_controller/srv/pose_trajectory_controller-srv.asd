
(cl:in-package :asdf)

(defsystem "pose_trajectory_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pose_trajectory_controller-msg
)
  :components ((:file "_package")
    (:file "MergeTwoPoseTraj" :depends-on ("_package_MergeTwoPoseTraj"))
    (:file "_package_MergeTwoPoseTraj" :depends-on ("_package"))
    (:file "QueryTrajectoryState" :depends-on ("_package_QueryTrajectoryState"))
    (:file "_package_QueryTrajectoryState" :depends-on ("_package"))
  ))