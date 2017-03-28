;; Auto-generated. Do not edit!


(when (boundp 'referee::SendColor)
  (if (not (find-package "REFEREE"))
    (make-package "REFEREE"))
  (shadow 'SendColor (find-package "REFEREE")))
(unless (find-package "REFEREE::SENDCOLOR")
  (make-package "REFEREE::SENDCOLOR"))
(unless (find-package "REFEREE::SENDCOLORREQUEST")
  (make-package "REFEREE::SENDCOLORREQUEST"))
(unless (find-package "REFEREE::SENDCOLORRESPONSE")
  (make-package "REFEREE::SENDCOLORRESPONSE"))

(in-package "ROS")





(defclass referee::SendColorRequest
  :super ros::object
  :slots (_team _color ))

(defmethod referee::SendColorRequest
  (:init
   (&key
    ((:team __team) "")
    ((:color __color) "")
    )
   (send-super :init)
   (setq _team (string __team))
   (setq _color (string __color))
   self)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; string _team
    4 (length _team)
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _team
       (write-long (length _team) s) (princ _team s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _team
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _team (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass referee::SendColorResponse
  :super ros::object
  :slots (_ok _correctColor ))

(defmethod referee::SendColorResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:correctColor __correctColor) "")
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _correctColor (string __correctColor))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:correctColor
   (&optional __correctColor)
   (if __correctColor (setq _correctColor __correctColor)) _correctColor)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string _correctColor
    4 (length _correctColor)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string _correctColor
       (write-long (length _correctColor) s) (princ _correctColor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _correctColor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _correctColor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass referee::SendColor
  :super ros::object
  :slots ())

(setf (get referee::SendColor :md5sum-) "e6d5aa3a575bd2c74ae1fa54aa259b0b")
(setf (get referee::SendColor :datatype-) "referee/SendColor")
(setf (get referee::SendColor :request) referee::SendColorRequest)
(setf (get referee::SendColor :response) referee::SendColorResponse)

(defmethod referee::SendColorRequest
  (:response () (instance referee::SendColorResponse :init)))

(setf (get referee::SendColorRequest :md5sum-) "e6d5aa3a575bd2c74ae1fa54aa259b0b")
(setf (get referee::SendColorRequest :datatype-) "referee/SendColorRequest")
(setf (get referee::SendColorRequest :definition-)
      "string team
string color
---
bool ok
string correctColor

")

(setf (get referee::SendColorResponse :md5sum-) "e6d5aa3a575bd2c74ae1fa54aa259b0b")
(setf (get referee::SendColorResponse :datatype-) "referee/SendColorResponse")
(setf (get referee::SendColorResponse :definition-)
      "string team
string color
---
bool ok
string correctColor

")



(provide :referee/SendColor "e6d5aa3a575bd2c74ae1fa54aa259b0b")


