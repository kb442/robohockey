; Auto-generated. Do not edit!


(cl:in-package referee-srv)


;//! \htmlinclude SendDimensions-request.msg.html

(cl:defclass <SendDimensions-request> (roslisp-msg-protocol:ros-message)
  ((team
    :reader team
    :initarg :team
    :type cl:string
    :initform "")
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass SendDimensions-request (<SendDimensions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDimensions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDimensions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name referee-srv:<SendDimensions-request> is deprecated: use referee-srv:SendDimensions-request instead.")))

(cl:ensure-generic-function 'team-val :lambda-list '(m))
(cl:defmethod team-val ((m <SendDimensions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:team-val is deprecated.  Use referee-srv:team instead.")
  (team m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <SendDimensions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:dimensions-val is deprecated.  Use referee-srv:dimensions instead.")
  (dimensions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDimensions-request>) ostream)
  "Serializes a message object of type '<SendDimensions-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'team))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'team))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDimensions-request>) istream)
  "Deserializes a message object of type '<SendDimensions-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'team) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'team) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDimensions-request>)))
  "Returns string type for a service object of type '<SendDimensions-request>"
  "referee/SendDimensionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDimensions-request)))
  "Returns string type for a service object of type 'SendDimensions-request"
  "referee/SendDimensionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDimensions-request>)))
  "Returns md5sum for a message object of type '<SendDimensions-request>"
  "93d19cf8b6cc6f6fec2d0c3699a876a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDimensions-request)))
  "Returns md5sum for a message object of type 'SendDimensions-request"
  "93d19cf8b6cc6f6fec2d0c3699a876a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDimensions-request>)))
  "Returns full string definition for message of type '<SendDimensions-request>"
  (cl:format cl:nil "string team~%geometry_msgs/Point dimensions~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDimensions-request)))
  "Returns full string definition for message of type 'SendDimensions-request"
  (cl:format cl:nil "string team~%geometry_msgs/Point dimensions~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDimensions-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'team))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDimensions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDimensions-request
    (cl:cons ':team (team msg))
    (cl:cons ':dimensions (dimensions msg))
))
;//! \htmlinclude SendDimensions-response.msg.html

(cl:defclass <SendDimensions-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (correctDimensions
    :reader correctDimensions
    :initarg :correctDimensions
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass SendDimensions-response (<SendDimensions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDimensions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDimensions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name referee-srv:<SendDimensions-response> is deprecated: use referee-srv:SendDimensions-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SendDimensions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:ok-val is deprecated.  Use referee-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'correctDimensions-val :lambda-list '(m))
(cl:defmethod correctDimensions-val ((m <SendDimensions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:correctDimensions-val is deprecated.  Use referee-srv:correctDimensions instead.")
  (correctDimensions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDimensions-response>) ostream)
  "Serializes a message object of type '<SendDimensions-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'correctDimensions) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDimensions-response>) istream)
  "Deserializes a message object of type '<SendDimensions-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'correctDimensions) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDimensions-response>)))
  "Returns string type for a service object of type '<SendDimensions-response>"
  "referee/SendDimensionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDimensions-response)))
  "Returns string type for a service object of type 'SendDimensions-response"
  "referee/SendDimensionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDimensions-response>)))
  "Returns md5sum for a message object of type '<SendDimensions-response>"
  "93d19cf8b6cc6f6fec2d0c3699a876a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDimensions-response)))
  "Returns md5sum for a message object of type 'SendDimensions-response"
  "93d19cf8b6cc6f6fec2d0c3699a876a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDimensions-response>)))
  "Returns full string definition for message of type '<SendDimensions-response>"
  (cl:format cl:nil "bool ok~%geometry_msgs/Point correctDimensions~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDimensions-response)))
  "Returns full string definition for message of type 'SendDimensions-response"
  (cl:format cl:nil "bool ok~%geometry_msgs/Point correctDimensions~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDimensions-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'correctDimensions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDimensions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDimensions-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':correctDimensions (correctDimensions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendDimensions)))
  'SendDimensions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendDimensions)))
  'SendDimensions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDimensions)))
  "Returns string type for a service object of type '<SendDimensions>"
  "referee/SendDimensions")