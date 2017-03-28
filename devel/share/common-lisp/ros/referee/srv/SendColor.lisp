; Auto-generated. Do not edit!


(cl:in-package referee-srv)


;//! \htmlinclude SendColor-request.msg.html

(cl:defclass <SendColor-request> (roslisp-msg-protocol:ros-message)
  ((team
    :reader team
    :initarg :team
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass SendColor-request (<SendColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name referee-srv:<SendColor-request> is deprecated: use referee-srv:SendColor-request instead.")))

(cl:ensure-generic-function 'team-val :lambda-list '(m))
(cl:defmethod team-val ((m <SendColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:team-val is deprecated.  Use referee-srv:team instead.")
  (team m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SendColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:color-val is deprecated.  Use referee-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendColor-request>) ostream)
  "Serializes a message object of type '<SendColor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'team))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'team))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendColor-request>) istream)
  "Deserializes a message object of type '<SendColor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'team) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'team) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendColor-request>)))
  "Returns string type for a service object of type '<SendColor-request>"
  "referee/SendColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendColor-request)))
  "Returns string type for a service object of type 'SendColor-request"
  "referee/SendColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendColor-request>)))
  "Returns md5sum for a message object of type '<SendColor-request>"
  "e6d5aa3a575bd2c74ae1fa54aa259b0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendColor-request)))
  "Returns md5sum for a message object of type 'SendColor-request"
  "e6d5aa3a575bd2c74ae1fa54aa259b0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendColor-request>)))
  "Returns full string definition for message of type '<SendColor-request>"
  (cl:format cl:nil "string team~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendColor-request)))
  "Returns full string definition for message of type 'SendColor-request"
  (cl:format cl:nil "string team~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendColor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'team))
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendColor-request
    (cl:cons ':team (team msg))
    (cl:cons ':color (color msg))
))
;//! \htmlinclude SendColor-response.msg.html

(cl:defclass <SendColor-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (correctColor
    :reader correctColor
    :initarg :correctColor
    :type cl:string
    :initform ""))
)

(cl:defclass SendColor-response (<SendColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name referee-srv:<SendColor-response> is deprecated: use referee-srv:SendColor-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SendColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:ok-val is deprecated.  Use referee-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'correctColor-val :lambda-list '(m))
(cl:defmethod correctColor-val ((m <SendColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:correctColor-val is deprecated.  Use referee-srv:correctColor instead.")
  (correctColor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendColor-response>) ostream)
  "Serializes a message object of type '<SendColor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'correctColor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'correctColor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendColor-response>) istream)
  "Deserializes a message object of type '<SendColor-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'correctColor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'correctColor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendColor-response>)))
  "Returns string type for a service object of type '<SendColor-response>"
  "referee/SendColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendColor-response)))
  "Returns string type for a service object of type 'SendColor-response"
  "referee/SendColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendColor-response>)))
  "Returns md5sum for a message object of type '<SendColor-response>"
  "e6d5aa3a575bd2c74ae1fa54aa259b0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendColor-response)))
  "Returns md5sum for a message object of type 'SendColor-response"
  "e6d5aa3a575bd2c74ae1fa54aa259b0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendColor-response>)))
  "Returns full string definition for message of type '<SendColor-response>"
  (cl:format cl:nil "bool ok~%string correctColor~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendColor-response)))
  "Returns full string definition for message of type 'SendColor-response"
  (cl:format cl:nil "bool ok~%string correctColor~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendColor-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'correctColor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendColor-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':correctColor (correctColor msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendColor)))
  'SendColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendColor)))
  'SendColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendColor)))
  "Returns string type for a service object of type '<SendColor>"
  "referee/SendColor")