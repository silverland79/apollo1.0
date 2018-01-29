; Auto-generated. Do not edit!


(cl:in-package roscpp-srv)


;//! \htmlinclude SharedMemoryRegisterSegment-request.msg.html

(cl:defclass <SharedMemoryRegisterSegment-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass SharedMemoryRegisterSegment-request (<SharedMemoryRegisterSegment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SharedMemoryRegisterSegment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SharedMemoryRegisterSegment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<SharedMemoryRegisterSegment-request> is deprecated: use roscpp-srv:SharedMemoryRegisterSegment-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <SharedMemoryRegisterSegment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-srv:topic-val is deprecated.  Use roscpp-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SharedMemoryRegisterSegment-request>) ostream)
  "Serializes a message object of type '<SharedMemoryRegisterSegment-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SharedMemoryRegisterSegment-request>) istream)
  "Deserializes a message object of type '<SharedMemoryRegisterSegment-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SharedMemoryRegisterSegment-request>)))
  "Returns string type for a service object of type '<SharedMemoryRegisterSegment-request>"
  "roscpp/SharedMemoryRegisterSegmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SharedMemoryRegisterSegment-request)))
  "Returns string type for a service object of type 'SharedMemoryRegisterSegment-request"
  "roscpp/SharedMemoryRegisterSegmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SharedMemoryRegisterSegment-request>)))
  "Returns md5sum for a message object of type '<SharedMemoryRegisterSegment-request>"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SharedMemoryRegisterSegment-request)))
  "Returns md5sum for a message object of type 'SharedMemoryRegisterSegment-request"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SharedMemoryRegisterSegment-request>)))
  "Returns full string definition for message of type '<SharedMemoryRegisterSegment-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SharedMemoryRegisterSegment-request)))
  "Returns full string definition for message of type 'SharedMemoryRegisterSegment-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SharedMemoryRegisterSegment-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SharedMemoryRegisterSegment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SharedMemoryRegisterSegment-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude SharedMemoryRegisterSegment-response.msg.html

(cl:defclass <SharedMemoryRegisterSegment-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SharedMemoryRegisterSegment-response (<SharedMemoryRegisterSegment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SharedMemoryRegisterSegment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SharedMemoryRegisterSegment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-srv:<SharedMemoryRegisterSegment-response> is deprecated: use roscpp-srv:SharedMemoryRegisterSegment-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SharedMemoryRegisterSegment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-srv:result-val is deprecated.  Use roscpp-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SharedMemoryRegisterSegment-response>) ostream)
  "Serializes a message object of type '<SharedMemoryRegisterSegment-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SharedMemoryRegisterSegment-response>) istream)
  "Deserializes a message object of type '<SharedMemoryRegisterSegment-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SharedMemoryRegisterSegment-response>)))
  "Returns string type for a service object of type '<SharedMemoryRegisterSegment-response>"
  "roscpp/SharedMemoryRegisterSegmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SharedMemoryRegisterSegment-response)))
  "Returns string type for a service object of type 'SharedMemoryRegisterSegment-response"
  "roscpp/SharedMemoryRegisterSegmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SharedMemoryRegisterSegment-response>)))
  "Returns md5sum for a message object of type '<SharedMemoryRegisterSegment-response>"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SharedMemoryRegisterSegment-response)))
  "Returns md5sum for a message object of type 'SharedMemoryRegisterSegment-response"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SharedMemoryRegisterSegment-response>)))
  "Returns full string definition for message of type '<SharedMemoryRegisterSegment-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SharedMemoryRegisterSegment-response)))
  "Returns full string definition for message of type 'SharedMemoryRegisterSegment-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SharedMemoryRegisterSegment-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SharedMemoryRegisterSegment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SharedMemoryRegisterSegment-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SharedMemoryRegisterSegment)))
  'SharedMemoryRegisterSegment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SharedMemoryRegisterSegment)))
  'SharedMemoryRegisterSegment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SharedMemoryRegisterSegment)))
  "Returns string type for a service object of type '<SharedMemoryRegisterSegment>"
  "roscpp/SharedMemoryRegisterSegment")