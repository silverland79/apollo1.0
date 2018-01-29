; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude RAWIMU.msg.html

(cl:defclass <RAWIMU> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type novatel_msgs-msg:CommonHeader
    :initform (cl:make-instance 'novatel_msgs-msg:CommonHeader))
   (week
    :reader week
    :initarg :week
    :type cl:integer
    :initform 0)
   (gpssec
    :reader gpssec
    :initarg :gpssec
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0))
   (accz
    :reader accz
    :initarg :accz
    :type cl:integer
    :initform 0)
   (accy_neg
    :reader accy_neg
    :initarg :accy_neg
    :type cl:integer
    :initform 0)
   (accx
    :reader accx
    :initarg :accx
    :type cl:integer
    :initform 0)
   (gyrz
    :reader gyrz
    :initarg :gyrz
    :type cl:integer
    :initform 0)
   (gyry_neg
    :reader gyry_neg
    :initarg :gyry_neg
    :type cl:integer
    :initform 0)
   (gyrx
    :reader gyrx
    :initarg :gyrx
    :type cl:integer
    :initform 0))
)

(cl:defclass RAWIMU (<RAWIMU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RAWIMU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RAWIMU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<RAWIMU> is deprecated: use novatel_msgs-msg:RAWIMU instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:header-val is deprecated.  Use novatel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:week-val is deprecated.  Use novatel_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'gpssec-val :lambda-list '(m))
(cl:defmethod gpssec-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gpssec-val is deprecated.  Use novatel_msgs-msg:gpssec instead.")
  (gpssec m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:status-val is deprecated.  Use novatel_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'accz-val :lambda-list '(m))
(cl:defmethod accz-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:accz-val is deprecated.  Use novatel_msgs-msg:accz instead.")
  (accz m))

(cl:ensure-generic-function 'accy_neg-val :lambda-list '(m))
(cl:defmethod accy_neg-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:accy_neg-val is deprecated.  Use novatel_msgs-msg:accy_neg instead.")
  (accy_neg m))

(cl:ensure-generic-function 'accx-val :lambda-list '(m))
(cl:defmethod accx-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:accx-val is deprecated.  Use novatel_msgs-msg:accx instead.")
  (accx m))

(cl:ensure-generic-function 'gyrz-val :lambda-list '(m))
(cl:defmethod gyrz-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gyrz-val is deprecated.  Use novatel_msgs-msg:gyrz instead.")
  (gyrz m))

(cl:ensure-generic-function 'gyry_neg-val :lambda-list '(m))
(cl:defmethod gyry_neg-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gyry_neg-val is deprecated.  Use novatel_msgs-msg:gyry_neg instead.")
  (gyry_neg m))

(cl:ensure-generic-function 'gyrx-val :lambda-list '(m))
(cl:defmethod gyrx-val ((m <RAWIMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gyrx-val is deprecated.  Use novatel_msgs-msg:gyrx instead.")
  (gyrx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RAWIMU>) ostream)
  "Serializes a message object of type '<RAWIMU>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gpssec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'status))
  (cl:let* ((signed (cl:slot-value msg 'accz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'accy_neg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'accx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyrz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyry_neg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyrx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RAWIMU>) istream)
  "Deserializes a message object of type '<RAWIMU>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'week) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpssec) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accz) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accy_neg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyrz) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyry_neg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyrx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RAWIMU>)))
  "Returns string type for a message object of type '<RAWIMU>"
  "novatel_msgs/RAWIMU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RAWIMU)))
  "Returns string type for a message object of type 'RAWIMU"
  "novatel_msgs/RAWIMU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RAWIMU>)))
  "Returns md5sum for a message object of type '<RAWIMU>"
  "1994bb1ea664fad223f16baa26d93754")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RAWIMU)))
  "Returns md5sum for a message object of type 'RAWIMU"
  "1994bb1ea664fad223f16baa26d93754")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RAWIMU>)))
  "Returns full string definition for message of type '<RAWIMU>"
  (cl:format cl:nil "# message 268~%novatel_msgs/CommonHeader header~%~%int32 week~%float64 gpssec~%~%char[4] status~%~%int32 accz~%int32 accy_neg~%int32 accx~%~%int32 gyrz~%int32 gyry_neg~%int32 gyrx~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RAWIMU)))
  "Returns full string definition for message of type 'RAWIMU"
  (cl:format cl:nil "# message 268~%novatel_msgs/CommonHeader header~%~%int32 week~%float64 gpssec~%~%char[4] status~%~%int32 accz~%int32 accy_neg~%int32 accx~%~%int32 gyrz~%int32 gyry_neg~%int32 gyrx~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RAWIMU>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RAWIMU>))
  "Converts a ROS message object to a list"
  (cl:list 'RAWIMU
    (cl:cons ':header (header msg))
    (cl:cons ':week (week msg))
    (cl:cons ':gpssec (gpssec msg))
    (cl:cons ':status (status msg))
    (cl:cons ':accz (accz msg))
    (cl:cons ':accy_neg (accy_neg msg))
    (cl:cons ':accx (accx msg))
    (cl:cons ':gyrz (gyrz msg))
    (cl:cons ':gyry_neg (gyry_neg msg))
    (cl:cons ':gyrx (gyrx msg))
))
