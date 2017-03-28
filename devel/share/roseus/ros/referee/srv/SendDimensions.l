;; Auto-generated. Do not edit!


(when (boundp 'referee::SendDimensions)
  (if (not (find-package "REFEREE"))
    (make-package "REFEREE"))
  (shadow 'SendDimensions (find-package "REFEREE")))
(unless (find-package "REFEREE::SENDDIMENSIONS")
  (make-package "REFEREE::SENDDIMENSIONS"))
(unless (find-package "REFEREE::SENDDIMENSIONSREQUEST")
  (make-package "REFEREE::SENDDIMENSIONSREQUEST"))
(unless (find-package "REFEREE::SENDDIMENSIONSRESPONSE")
  (make-package "REFEREE::SENDDIMENSIONSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass referee::SendDimensionsRequest
  :super ros::object
  :slots (_team _dimensions ))

(defmethod referee::SendDimensionsRequest
  (:init
   (&key
    ((:team __team) "")
    ((:dimensions __dimensions) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _team (string __team))
   (setq _dimensions __dimensions)
   self)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:serialization-length
   ()
   (+
    ;; string _team
    4 (length _team)
    ;; geometry_msgs/Point _dimensions
    (send _dimensions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _team
       (write-long (length _team) s) (princ _team s)
     ;; geometry_msgs/Point _dimensions
       (send _dimensions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _team
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _team (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;;
   self)
  )

(defclass referee::SendDimensionsResponse
  :super ros::object
  :slots (_ok _correctDimensions ))

(defmethod referee::SendDimensionsResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:correctDimensions __correctDimensions) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _correctDimensions __correctDimensions)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:correctDimensions
   (&rest __correctDimensions)
   (if (keywordp (car __correctDimensions))
       (send* _correctDimensions __correctDimensions)
     (progn
       (if __correctDimensions (setq _correctDimensions (car __correctDimensions)))
       _correctDimensions)))
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; geometry_msgs/Point _correctDimensions
    (send _correctDimensions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _correctDimensions
       (send _correctDimensions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _correctDimensions
     (send _correctDimensions :deserialize buf ptr-) (incf ptr- (send _correctDimensions :serialization-length))
   ;;
   self)
  )

(defclass referee::SendDimensions
  :super ros::object
  :slots ())

(setf (get referee::SendDimensions :md5sum-) "93d19cf8b6cc6f6fec2d0c3699a876a4")
(setf (get referee::SendDimensions :datatype-) "referee/SendDimensions")
(setf (get referee::SendDimensions :request) referee::SendDimensionsRequest)
(setf (get referee::SendDimensions :response) referee::SendDimensionsResponse)

(defmethod referee::SendDimensionsRequest
  (:response () (instance referee::SendDimensionsResponse :init)))

(setf (get referee::SendDimensionsRequest :md5sum-) "93d19cf8b6cc6f6fec2d0c3699a876a4")
(setf (get referee::SendDimensionsRequest :datatype-) "referee/SendDimensionsRequest")
(setf (get referee::SendDimensionsRequest :definition-)
      "string team
geometry_msgs/Point dimensions

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool ok
geometry_msgs/Point correctDimensions


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get referee::SendDimensionsResponse :md5sum-) "93d19cf8b6cc6f6fec2d0c3699a876a4")
(setf (get referee::SendDimensionsResponse :datatype-) "referee/SendDimensionsResponse")
(setf (get referee::SendDimensionsResponse :definition-)
      "string team
geometry_msgs/Point dimensions

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool ok
geometry_msgs/Point correctDimensions


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :referee/SendDimensions "93d19cf8b6cc6f6fec2d0c3699a876a4")


