; Auto-generated. Do not edit!


(cl:in-package roscpp-msg)


;//! \htmlinclude SharedMemoryHeader.msg.html

(cl:defclass <SharedMemoryHeader> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass SharedMemoryHeader (<SharedMemoryHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SharedMemoryHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SharedMemoryHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roscpp-msg:<SharedMemoryHeader> is deprecated: use roscpp-msg:SharedMemoryHeader instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SharedMemoryHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roscpp-msg:index-val is deprecated.  Use roscpp-msg:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SharedMemoryHeader>) ostream)
  "Serializes a message object of type '<SharedMemoryHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SharedMemoryHeader>) istream)
  "Deserializes a message object of type '<SharedMemoryHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SharedMemoryHeader>)))
  "Returns string type for a message object of type '<SharedMemoryHeader>"
  "roscpp/SharedMemoryHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SharedMemoryHeader)))
  "Returns string type for a message object of type 'SharedMemoryHeader"
  "roscpp/SharedMemoryHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SharedMemoryHeader>)))
  "Returns md5sum for a message object of type '<SharedMemoryHeader>"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SharedMemoryHeader)))
  "Returns md5sum for a message object of type 'SharedMemoryHeader"
  "ad7b979103dbd563a352ef5270716728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SharedMemoryHeader>)))
  "Returns full string definition for message of type '<SharedMemoryHeader>"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SharedMemoryHeader)))
  "Returns full string definition for message of type 'SharedMemoryHeader"
  (cl:format cl:nil "uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SharedMemoryHeader>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SharedMemoryHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'SharedMemoryHeader
    (cl:cons ':index (index msg))
))
