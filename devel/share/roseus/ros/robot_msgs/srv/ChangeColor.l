;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::ChangeColor)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'ChangeColor (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::CHANGECOLOR")
  (make-package "ROBOT_MSGS::CHANGECOLOR"))
(unless (find-package "ROBOT_MSGS::CHANGECOLORREQUEST")
  (make-package "ROBOT_MSGS::CHANGECOLORREQUEST"))
(unless (find-package "ROBOT_MSGS::CHANGECOLORRESPONSE")
  (make-package "ROBOT_MSGS::CHANGECOLORRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass robot_msgs::ChangeColorRequest
  :super ros::object
  :slots (_color ))

(defmethod robot_msgs::ChangeColorRequest
  (:init
   (&key
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _color __color)
   self)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(defclass robot_msgs::ChangeColorResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_msgs::ChangeColorResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::ChangeColor
  :super ros::object
  :slots ())

(setf (get robot_msgs::ChangeColor :md5sum-) "b6666a3f837cecf81b427d119a6ab66e")
(setf (get robot_msgs::ChangeColor :datatype-) "robot_msgs/ChangeColor")
(setf (get robot_msgs::ChangeColor :request) robot_msgs::ChangeColorRequest)
(setf (get robot_msgs::ChangeColor :response) robot_msgs::ChangeColorResponse)

(defmethod robot_msgs::ChangeColorRequest
  (:response () (instance robot_msgs::ChangeColorResponse :init)))

(setf (get robot_msgs::ChangeColorRequest :md5sum-) "b6666a3f837cecf81b427d119a6ab66e")
(setf (get robot_msgs::ChangeColorRequest :datatype-) "robot_msgs/ChangeColorRequest")
(setf (get robot_msgs::ChangeColorRequest :definition-)
      "std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
bool success
string message

")

(setf (get robot_msgs::ChangeColorResponse :md5sum-) "b6666a3f837cecf81b427d119a6ab66e")
(setf (get robot_msgs::ChangeColorResponse :datatype-) "robot_msgs/ChangeColorResponse")
(setf (get robot_msgs::ChangeColorResponse :definition-)
      "std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
bool success
string message

")



(provide :robot_msgs/ChangeColor "b6666a3f837cecf81b427d119a6ab66e")


