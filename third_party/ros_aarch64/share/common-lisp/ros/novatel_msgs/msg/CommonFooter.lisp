; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude CommonFooter.msg.html

(cl:defclass <CommonFooter> (roslisp-msg-protocol:ros-message)
  ((checksum
    :reader checksum
    :initarg :checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass CommonFooter (<CommonFooter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonFooter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonFooter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<CommonFooter> is deprecated: use novatel_msgs-msg:CommonFooter instead.")))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <CommonFooter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:checksum-val is deprecated.  Use novatel_msgs-msg:checksum instead.")
  (checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonFooter>) ostream)
  "Serializes a message object of type '<CommonFooter>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'checksum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonFooter>) istream)
  "Deserializes a message object of type '<CommonFooter>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonFooter>)))
  "Returns string type for a message object of type '<CommonFooter>"
  "novatel_msgs/CommonFooter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonFooter)))
  "Returns string type for a message object of type 'CommonFooter"
  "novatel_msgs/CommonFooter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonFooter>)))
  "Returns md5sum for a message object of type '<CommonFooter>"
  "5a3857d7abd4ce1de381cc063c02bc83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonFooter)))
  "Returns md5sum for a message object of type 'CommonFooter"
  "5a3857d7abd4ce1de381cc063c02bc83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonFooter>)))
  "Returns full string definition for message of type '<CommonFooter>"
  (cl:format cl:nil "uint32 checksum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonFooter)))
  "Returns full string definition for message of type 'CommonFooter"
  (cl:format cl:nil "uint32 checksum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonFooter>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonFooter>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonFooter
    (cl:cons ':checksum (checksum msg))
))
