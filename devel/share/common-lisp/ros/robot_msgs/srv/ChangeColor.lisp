; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude ChangeColor-request.msg.html

(cl:defclass <ChangeColor-request> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass ChangeColor-request (<ChangeColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<ChangeColor-request> is deprecated: use robot_msgs-srv:ChangeColor-request instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ChangeColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:color-val is deprecated.  Use robot_msgs-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeColor-request>) ostream)
  "Serializes a message object of type '<ChangeColor-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeColor-request>) istream)
  "Deserializes a message object of type '<ChangeColor-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeColor-request>)))
  "Returns string type for a service object of type '<ChangeColor-request>"
  "robot_msgs/ChangeColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeColor-request)))
  "Returns string type for a service object of type 'ChangeColor-request"
  "robot_msgs/ChangeColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeColor-request>)))
  "Returns md5sum for a message object of type '<ChangeColor-request>"
  "b6666a3f837cecf81b427d119a6ab66e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeColor-request)))
  "Returns md5sum for a message object of type 'ChangeColor-request"
  "b6666a3f837cecf81b427d119a6ab66e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeColor-request>)))
  "Returns full string definition for message of type '<ChangeColor-request>"
  (cl:format cl:nil "std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeColor-request)))
  "Returns full string definition for message of type 'ChangeColor-request"
  (cl:format cl:nil "std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeColor-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeColor-request
    (cl:cons ':color (color msg))
))
;//! \htmlinclude ChangeColor-response.msg.html

(cl:defclass <ChangeColor-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeColor-response (<ChangeColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<ChangeColor-response> is deprecated: use robot_msgs-srv:ChangeColor-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:success-val is deprecated.  Use robot_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:message-val is deprecated.  Use robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeColor-response>) ostream)
  "Serializes a message object of type '<ChangeColor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeColor-response>) istream)
  "Deserializes a message object of type '<ChangeColor-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeColor-response>)))
  "Returns string type for a service object of type '<ChangeColor-response>"
  "robot_msgs/ChangeColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeColor-response)))
  "Returns string type for a service object of type 'ChangeColor-response"
  "robot_msgs/ChangeColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeColor-response>)))
  "Returns md5sum for a message object of type '<ChangeColor-response>"
  "b6666a3f837cecf81b427d119a6ab66e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeColor-response)))
  "Returns md5sum for a message object of type 'ChangeColor-response"
  "b6666a3f837cecf81b427d119a6ab66e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeColor-response>)))
  "Returns full string definition for message of type '<ChangeColor-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeColor-response)))
  "Returns full string definition for message of type 'ChangeColor-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeColor-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeColor-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeColor)))
  'ChangeColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeColor)))
  'ChangeColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeColor)))
  "Returns string type for a service object of type '<ChangeColor>"
  "robot_msgs/ChangeColor")