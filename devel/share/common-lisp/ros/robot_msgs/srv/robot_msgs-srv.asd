
(cl:in-package :asdf)

(defsystem "robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ChangeColor" :depends-on ("_package_ChangeColor"))
    (:file "_package_ChangeColor" :depends-on ("_package"))
  ))