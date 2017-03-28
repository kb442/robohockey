; Auto-generated. Do not edit!


(cl:in-package referee-srv)


;//! \htmlinclude TeamReady-request.msg.html

(cl:defclass <TeamReady-request> (roslisp-msg-protocol:ros-message)
  ((team
    :reader team
    :initarg :team
    :type cl:string
    :initform ""))
)

(cl:defclass TeamReady-request (<TeamReady-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeamReady-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeamReady-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name referee-srv:<TeamReady-request> is deprecated: use referee-srv:TeamReady-request instead.")))

(cl:ensure-generic-function 'team-val :lambda-list '(m))
(cl:defmethod team-val ((m <TeamReady-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:team-val is deprecated.  Use referee-srv:team instead.")
  (team m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeamReady-request>) ostream)
  "Serializes a message object of type '<TeamReady-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'team))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'team))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeamReady-request>) istream)
  "Deserializes a message object of type '<TeamReady-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'team) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'team) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeamReady-request>)))
  "Returns string type for a service object of type '<TeamReady-request>"
  "referee/TeamReadyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeamReady-request)))
  "Returns string type for a service object of type 'TeamReady-request"
  "referee/TeamReadyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeamReady-request>)))
  "Returns md5sum for a message object of type '<TeamReady-request>"
  "dde678767d5425233d0d82d47446a552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeamReady-request)))
  "Returns md5sum for a message object of type 'TeamReady-request"
  "dde678767d5425233d0d82d47446a552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeamReady-request>)))
  "Returns full string definition for message of type '<TeamReady-request>"
  (cl:format cl:nil "string team~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeamReady-request)))
  "Returns full string definition for message of type 'TeamReady-request"
  (cl:format cl:nil "string team~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeamReady-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'team))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeamReady-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TeamReady-request
    (cl:cons ':team (team msg))
))
;//! \htmlinclude TeamReady-response.msg.html

(cl:defclass <TeamReady-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TeamReady-response (<TeamReady-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeamReady-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeamReady-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name referee-srv:<TeamReady-response> is deprecated: use referee-srv:TeamReady-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <TeamReady-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader referee-srv:ok-val is deprecated.  Use referee-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeamReady-response>) ostream)
  "Serializes a message object of type '<TeamReady-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeamReady-response>) istream)
  "Deserializes a message object of type '<TeamReady-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeamReady-response>)))
  "Returns string type for a service object of type '<TeamReady-response>"
  "referee/TeamReadyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeamReady-response)))
  "Returns string type for a service object of type 'TeamReady-response"
  "referee/TeamReadyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeamReady-response>)))
  "Returns md5sum for a message object of type '<TeamReady-response>"
  "dde678767d5425233d0d82d47446a552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeamReady-response)))
  "Returns md5sum for a message object of type 'TeamReady-response"
  "dde678767d5425233d0d82d47446a552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeamReady-response>)))
  "Returns full string definition for message of type '<TeamReady-response>"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeamReady-response)))
  "Returns full string definition for message of type 'TeamReady-response"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeamReady-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeamReady-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TeamReady-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TeamReady)))
  'TeamReady-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TeamReady)))
  'TeamReady-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeamReady)))
  "Returns string type for a service object of type '<TeamReady>"
  "referee/TeamReady")