
(cl:in-package :asdf)

(defsystem "robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ABC" :depends-on ("_package_ABC"))
    (:file "_package_ABC" :depends-on ("_package"))
    (:file "MoveToPoseAction" :depends-on ("_package_MoveToPoseAction"))
    (:file "_package_MoveToPoseAction" :depends-on ("_package"))
    (:file "MoveToPoseActionFeedback" :depends-on ("_package_MoveToPoseActionFeedback"))
    (:file "_package_MoveToPoseActionFeedback" :depends-on ("_package"))
    (:file "MoveToPoseActionGoal" :depends-on ("_package_MoveToPoseActionGoal"))
    (:file "_package_MoveToPoseActionGoal" :depends-on ("_package"))
    (:file "MoveToPoseActionResult" :depends-on ("_package_MoveToPoseActionResult"))
    (:file "_package_MoveToPoseActionResult" :depends-on ("_package"))
    (:file "MoveToPoseFeedback" :depends-on ("_package_MoveToPoseFeedback"))
    (:file "_package_MoveToPoseFeedback" :depends-on ("_package"))
    (:file "MoveToPoseGoal" :depends-on ("_package_MoveToPoseGoal"))
    (:file "_package_MoveToPoseGoal" :depends-on ("_package"))
    (:file "MoveToPoseResult" :depends-on ("_package_MoveToPoseResult"))
    (:file "_package_MoveToPoseResult" :depends-on ("_package"))
  ))