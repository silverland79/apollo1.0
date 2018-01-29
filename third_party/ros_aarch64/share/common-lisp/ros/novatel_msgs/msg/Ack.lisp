; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude Ack.msg.html

(cl:defclass <Ack> (roslisp-msg-protocol:ros-message)
  ((transaction
    :reader transaction
    :initarg :transaction
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (response_code
    :reader response_code
    :initarg :response_code
    :type cl:fixnum
    :initform 0)
   (params_status
    :reader params_status
    :initarg :params_status
    :type cl:fixnum
    :initform 0)
   (error_parameter_name
    :reader error_parameter_name
    :initarg :error_parameter_name
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 32 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Ack (<Ack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<Ack> is deprecated: use novatel_msgs-msg:Ack instead.")))

(cl:ensure-generic-function 'transaction-val :lambda-list '(m))
(cl:defmethod transaction-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:transaction-val is deprecated.  Use novatel_msgs-msg:transaction instead.")
  (transaction m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:id-val is deprecated.  Use novatel_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'response_code-val :lambda-list '(m))
(cl:defmethod response_code-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:response_code-val is deprecated.  Use novatel_msgs-msg:response_code instead.")
  (response_code m))

(cl:ensure-generic-function 'params_status-val :lambda-list '(m))
(cl:defmethod params_status-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:params_status-val is deprecated.  Use novatel_msgs-msg:params_status instead.")
  (params_status m))

(cl:ensure-generic-function 'error_parameter_name-val :lambda-list '(m))
(cl:defmethod error_parameter_name-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:error_parameter_name-val is deprecated.  Use novatel_msgs-msg:error_parameter_name instead.")
  (error_parameter_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ack>)))
    "Constants for message type '<Ack>"
  '((:RESPONSE_NOT_APPLICABLE . 0)
    (:RESPONSE_ACCEPTED . 1)
    (:RESPONSE_ACCEPTED_TOO_LONG . 2)
    (:RESPONSE_ACCEPTED_TOO_SHORT . 3)
    (:RESPONSE_PARAM_ERROR . 4)
    (:RESPONSE_NOT_APPLICABLE_IN_CURRENT_STATE . 5)
    (:RESPONSE_DATA_NOT_AVAILABLE . 6)
    (:RESPONSE_MESSAGE_START_ERROR . 7)
    (:RESPONSE_MESSAGE_END_ERROR . 8)
    (:RESPONSE_BYTE_COUNT_ERROR . 9)
    (:RESPONSE_CHECKSUM_ERROR . 10)
    (:PARAMS_NO_CHANGE . 0)
    (:PARAMS_CHANGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ack)))
    "Constants for message type 'Ack"
  '((:RESPONSE_NOT_APPLICABLE . 0)
    (:RESPONSE_ACCEPTED . 1)
    (:RESPONSE_ACCEPTED_TOO_LONG . 2)
    (:RESPONSE_ACCEPTED_TOO_SHORT . 3)
    (:RESPONSE_PARAM_ERROR . 4)
    (:RESPONSE_NOT_APPLICABLE_IN_CURRENT_STATE . 5)
    (:RESPONSE_DATA_NOT_AVAILABLE . 6)
    (:RESPONSE_MESSAGE_START_ERROR . 7)
    (:RESPONSE_MESSAGE_END_ERROR . 8)
    (:RESPONSE_BYTE_COUNT_ERROR . 9)
    (:RESPONSE_CHECKSUM_ERROR . 10)
    (:PARAMS_NO_CHANGE . 0)
    (:PARAMS_CHANGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ack>) ostream)
  "Serializes a message object of type '<Ack>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transaction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'transaction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'response_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'params_status)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'error_parameter_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ack>) istream)
  "Deserializes a message object of type '<Ack>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transaction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'transaction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'response_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'params_status)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_parameter_name) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'error_parameter_name)))
    (cl:dotimes (i 32)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ack>)))
  "Returns string type for a message object of type '<Ack>"
  "novatel_msgs/Ack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ack)))
  "Returns string type for a message object of type 'Ack"
  "novatel_msgs/Ack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ack>)))
  "Returns md5sum for a message object of type '<Ack>"
  "f84607dc6beaf1cb6772d23af7221bdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ack)))
  "Returns md5sum for a message object of type 'Ack"
  "f84607dc6beaf1cb6772d23af7221bdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ack>)))
  "Returns full string definition for message of type '<Ack>"
  (cl:format cl:nil "uint16 transaction~%uint16 id~%~%uint16 RESPONSE_NOT_APPLICABLE=0~%uint16 RESPONSE_ACCEPTED=1~%uint16 RESPONSE_ACCEPTED_TOO_LONG=2~%uint16 RESPONSE_ACCEPTED_TOO_SHORT=3~%uint16 RESPONSE_PARAM_ERROR=4~%uint16 RESPONSE_NOT_APPLICABLE_IN_CURRENT_STATE=5~%uint16 RESPONSE_DATA_NOT_AVAILABLE=6~%uint16 RESPONSE_MESSAGE_START_ERROR=7~%uint16 RESPONSE_MESSAGE_END_ERROR=8~%uint16 RESPONSE_BYTE_COUNT_ERROR=9~%uint16 RESPONSE_CHECKSUM_ERROR=10~%uint16 response_code~%~%uint8 PARAMS_NO_CHANGE=0~%uint8 PARAMS_CHANGE=1~%uint8 params_status~%~%uint8[32] error_parameter_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ack)))
  "Returns full string definition for message of type 'Ack"
  (cl:format cl:nil "uint16 transaction~%uint16 id~%~%uint16 RESPONSE_NOT_APPLICABLE=0~%uint16 RESPONSE_ACCEPTED=1~%uint16 RESPONSE_ACCEPTED_TOO_LONG=2~%uint16 RESPONSE_ACCEPTED_TOO_SHORT=3~%uint16 RESPONSE_PARAM_ERROR=4~%uint16 RESPONSE_NOT_APPLICABLE_IN_CURRENT_STATE=5~%uint16 RESPONSE_DATA_NOT_AVAILABLE=6~%uint16 RESPONSE_MESSAGE_START_ERROR=7~%uint16 RESPONSE_MESSAGE_END_ERROR=8~%uint16 RESPONSE_BYTE_COUNT_ERROR=9~%uint16 RESPONSE_CHECKSUM_ERROR=10~%uint16 response_code~%~%uint8 PARAMS_NO_CHANGE=0~%uint8 PARAMS_CHANGE=1~%uint8 params_status~%~%uint8[32] error_parameter_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ack>))
  (cl:+ 0
     2
     2
     2
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'error_parameter_name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ack>))
  "Converts a ROS message object to a list"
  (cl:list 'Ack
    (cl:cons ':transaction (transaction msg))
    (cl:cons ':id (id msg))
    (cl:cons ':response_code (response_code msg))
    (cl:cons ':params_status (params_status msg))
    (cl:cons ':error_parameter_name (error_parameter_name msg))
))
