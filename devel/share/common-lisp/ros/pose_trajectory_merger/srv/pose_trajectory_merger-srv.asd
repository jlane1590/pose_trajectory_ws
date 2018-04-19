
(cl:in-package :asdf)

(defsystem "pose_trajectory_merger-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pose_trajectory_controller-msg
)
  :components ((:file "_package")
    (:file "MergeTwoPoseTraj" :depends-on ("_package_MergeTwoPoseTraj"))
    (:file "_package_MergeTwoPoseTraj" :depends-on ("_package"))
  ))