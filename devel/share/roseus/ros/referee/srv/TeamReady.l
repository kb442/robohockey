;; Auto-generated. Do not edit!


(when (boundp 'referee::TeamReady)
  (if (not (find-package "REFEREE"))
    (make-package "REFEREE"))
  (shadow 'TeamReady (find-package "REFEREE")))
(unless (find-package "REFEREE::TEAMREADY")
  (make-package "REFEREE::TEAMREADY"))
(unless (find-package "REFEREE::TEAMREADYREQUEST")
  (make-package "REFEREE::TEAMREADYREQUEST"))
(unless (find-package "REFEREE::TEAMREADYRESPONSE")
  (make-package "REFEREE::TEAMREADYRESPONSE"))

(in-package "ROS")





(defclass referee::TeamReadyRequest
  :super ros::object
  :slots (_team ))

(defmethod referee::TeamReadyRequest
  (:init
   (&key
    ((:team __team) "")
    )
   (send-super :init)
   (setq _team (string __team))
   self)
  (:team
   (&optional __team)
   (if __team (setq _team __team)) _team)
  (:serialization-length
   ()
   (+
    ;; string _team
    4 (length _team)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _team
       (write-long (length _team) s) (princ _team s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _team
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _team (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass referee::TeamReadyResponse
  :super ros::object
  :slots (_ok ))

(defmethod referee::TeamReadyResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass referee::TeamReady
  :super ros::object
  :slots ())

(setf (get referee::TeamReady :md5sum-) "dde678767d5425233d0d82d47446a552")
(setf (get referee::TeamReady :datatype-) "referee/TeamReady")
(setf (get referee::TeamReady :request) referee::TeamReadyRequest)
(setf (get referee::TeamReady :response) referee::TeamReadyResponse)

(defmethod referee::TeamReadyRequest
  (:response () (instance referee::TeamReadyResponse :init)))

(setf (get referee::TeamReadyRequest :md5sum-) "dde678767d5425233d0d82d47446a552")
(setf (get referee::TeamReadyRequest :datatype-) "referee/TeamReadyRequest")
(setf (get referee::TeamReadyRequest :definition-)
      "string team
---
bool ok

")

(setf (get referee::TeamReadyResponse :md5sum-) "dde678767d5425233d0d82d47446a552")
(setf (get referee::TeamReadyResponse :datatype-) "referee/TeamReadyResponse")
(setf (get referee::TeamReadyResponse :definition-)
      "string team
---
bool ok

")



(provide :referee/TeamReady "dde678767d5425233d0d82d47446a552")


