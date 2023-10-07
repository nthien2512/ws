;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::ABC)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'ABC (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::ABC")
  (make-package "ROBOT_MSGS::ABC"))

(in-package "ROS")
;;//! \htmlinclude ABC.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robot_msgs::ABC
  :super ros::object
  :slots (_a _b _c _d _e _f _str _fl32 _fl64 _Pose2D ))

(defmethod robot_msgs::ABC
  (:init
   (&key
    ((:a __a) nil)
    ((:b __b) 0)
    ((:c __c) 0)
    ((:d __d) 0)
    ((:e __e) 0)
    ((:f __f) 0)
    ((:str __str) "")
    ((:fl32 __fl32) 0.0)
    ((:fl64 __fl64) 0.0)
    ((:Pose2D __Pose2D) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _a __a)
   (setq _b (round __b))
   (setq _c (round __c))
   (setq _d (round __d))
   (setq _e (round __e))
   (setq _f (round __f))
   (setq _str (string __str))
   (setq _fl32 (float __fl32))
   (setq _fl64 (float __fl64))
   (setq _Pose2D __Pose2D)
   self)
  (:a
   (&optional (__a :null))
   (if (not (eq __a :null)) (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:f
   (&optional __f)
   (if __f (setq _f __f)) _f)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:fl32
   (&optional __fl32)
   (if __fl32 (setq _fl32 __fl32)) _fl32)
  (:fl64
   (&optional __fl64)
   (if __fl64 (setq _fl64 __fl64)) _fl64)
  (:Pose2D
   (&rest __Pose2D)
   (if (keywordp (car __Pose2D))
       (send* _Pose2D __Pose2D)
     (progn
       (if __Pose2D (setq _Pose2D (car __Pose2D)))
       _Pose2D)))
  (:serialization-length
   ()
   (+
    ;; bool _a
    1
    ;; int8 _b
    1
    ;; int16 _c
    2
    ;; int32 _d
    4
    ;; int64 _e
    8
    ;; uint8 _f
    1
    ;; string _str
    4 (length _str)
    ;; float32 _fl32
    4
    ;; float64 _fl64
    8
    ;; geometry_msgs/Pose2D _Pose2D
    (send _Pose2D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _a
       (if _a (write-byte -1 s) (write-byte 0 s))
     ;; int8 _b
       (write-byte _b s)
     ;; int16 _c
       (write-word _c s)
     ;; int32 _d
       (write-long _d s)
     ;; int64 _e
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _e (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _e) (= (length (_e . bv)) 2)) ;; bignum
              (write-long (ash (elt (_e . bv) 0) 0) s)
              (write-long (ash (elt (_e . bv) 1) -1) s))
             ((and (class _e) (= (length (_e . bv)) 1)) ;; big1
              (write-long (elt (_e . bv) 0) s)
              (write-long (if (>= _e 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _e s)(write-long (if (>= _e 0) 0 #xffffffff) s)))
     ;; uint8 _f
       (write-byte _f s)
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;; float32 _fl32
       (sys::poke _fl32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _fl64
       (sys::poke _fl64 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose2D _Pose2D
       (send _Pose2D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _a
     (setq _a (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _b 127) (setq _b (- _b 256)))
   ;; int16 _c
     (setq _c (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _d
     (setq _d (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _e
#+(or :alpha :irix6 :x86_64)
      (setf _e (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _e (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _f
     (setq _f (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _fl32
     (setq _fl32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _fl64
     (setq _fl64 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose2D _Pose2D
     (send _Pose2D :deserialize buf ptr-) (incf ptr- (send _Pose2D :serialization-length))
   ;;
   self)
  )

(setf (get robot_msgs::ABC :md5sum-) "7b05110c9cdadde365eb296f5368110c")
(setf (get robot_msgs::ABC :datatype-) "robot_msgs/ABC")
(setf (get robot_msgs::ABC :definition-)
      "bool a
int8 b
int16 c
int32 d
int64 e
uint8 f

string str
float32 fl32
float64 fl64

geometry_msgs/Pose2D Pose2D
================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :robot_msgs/ABC "7b05110c9cdadde365eb296f5368110c")


