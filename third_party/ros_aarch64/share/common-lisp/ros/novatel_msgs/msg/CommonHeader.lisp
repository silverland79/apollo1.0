; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude CommonHeader.msg.html

(cl:defclass <CommonHeader> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (msg_type
    :reader msg_type
    :initarg :msg_type
    :type cl:fixnum
    :initform 0)
   (port_addr
    :reader port_addr
    :initarg :port_addr
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:fixnum
    :initform 0)
   (idle_time
    :reader idle_time
    :initarg :idle_time
    :type cl:fixnum
    :initform 0)
   (time_status
    :reader time_status
    :initarg :time_status
    :type cl:fixnum
    :initform 0)
   (gps_week
    :reader gps_week
    :initarg :gps_week
    :type cl:fixnum
    :initform 0)
   (gps_week_milliseconds
    :reader gps_week_milliseconds
    :initarg :gps_week_milliseconds
    :type cl:integer
    :initform 0)
   (receiver_status
    :reader receiver_status
    :initarg :receiver_status
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0)
   (software_version
    :reader software_version
    :initarg :software_version
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonHeader (<CommonHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<CommonHeader> is deprecated: use novatel_msgs-msg:CommonHeader instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:id-val is deprecated.  Use novatel_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'msg_type-val :lambda-list '(m))
(cl:defmethod msg_type-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:msg_type-val is deprecated.  Use novatel_msgs-msg:msg_type instead.")
  (msg_type m))

(cl:ensure-generic-function 'port_addr-val :lambda-list '(m))
(cl:defmethod port_addr-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:port_addr-val is deprecated.  Use novatel_msgs-msg:port_addr instead.")
  (port_addr m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:length-val is deprecated.  Use novatel_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:sequence-val is deprecated.  Use novatel_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'idle_time-val :lambda-list '(m))
(cl:defmethod idle_time-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:idle_time-val is deprecated.  Use novatel_msgs-msg:idle_time instead.")
  (idle_time m))

(cl:ensure-generic-function 'time_status-val :lambda-list '(m))
(cl:defmethod time_status-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:time_status-val is deprecated.  Use novatel_msgs-msg:time_status instead.")
  (time_status m))

(cl:ensure-generic-function 'gps_week-val :lambda-list '(m))
(cl:defmethod gps_week-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gps_week-val is deprecated.  Use novatel_msgs-msg:gps_week instead.")
  (gps_week m))

(cl:ensure-generic-function 'gps_week_milliseconds-val :lambda-list '(m))
(cl:defmethod gps_week_milliseconds-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gps_week_milliseconds-val is deprecated.  Use novatel_msgs-msg:gps_week_milliseconds instead.")
  (gps_week_milliseconds m))

(cl:ensure-generic-function 'receiver_status-val :lambda-list '(m))
(cl:defmethod receiver_status-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:receiver_status-val is deprecated.  Use novatel_msgs-msg:receiver_status instead.")
  (receiver_status m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:reserved-val is deprecated.  Use novatel_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'software_version-val :lambda-list '(m))
(cl:defmethod software_version-val ((m <CommonHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:software_version-val is deprecated.  Use novatel_msgs-msg:software_version instead.")
  (software_version m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonHeader>)))
    "Constants for message type '<CommonHeader>"
  '((:RECEIVER_STATUS_ERROR . 1)
    (:RECEIVER_STATUS_TEMPERATURE_WARNING . 2)
    (:RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING . 4)
    (:RECEIVER_STATUS_ANTENNA_UNPOWERED . 8)
    (:RECEIVER_STATUS_LNA_FAILURE . 16)
    (:RECEIVER_STATUS_ANTENNA_OPEN . 32)
    (:RECEIVER_STATUS_ANTENNA_SHORTED . 64)
    (:RECEIVER_STATUS_CPU_OVERLOADED . 128)
    (:RECEIVER_STATUS_COM1_BUFFER_OVERRUN . 256)
    (:RECEIVER_STATUS_COM2_BUFFER_OVERRUN . 512)
    (:RECEIVER_STATUS_COM3_BUFFER_OVERRUN . 1024)
    (:RECEIVER_STATUS_LINK_OVERLOAD . 2048)
    (:RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN . 8192)
    (:RECEIVER_STATUS_AGC_OUT_OF_RANGE . 16384)
    (:RECEIVER_STATUS_INS_RESET . 65536)
    (:RECEIVER_STATUS_ALMANAC_INVALID . 262144)
    (:RECEIVER_STATUS_POSITION_SOLUTION_INVALID . 524288)
    (:RECEIVER_STATUS_POSITION_NOT_FIXED . 1048576)
    (:RECEIVER_STATUS_CLOCK_STEERING_DISABLED . 2097152)
    (:RECEIVER_STATUS_CLOCK_MODEL_INVALID . 4194304)
    (:RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED . 8388608)
    (:RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING . 16777216)
    (:RECEIVER_STATUS_AUXILIARY3_EVENT . 536870912)
    (:RECEIVER_STATUS_AUXILIARY2_EVENT . 1073741824)
    (:RECEIVER_STATUS_AUXILIARY1_EVENT . 2147483648))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonHeader)))
    "Constants for message type 'CommonHeader"
  '((:RECEIVER_STATUS_ERROR . 1)
    (:RECEIVER_STATUS_TEMPERATURE_WARNING . 2)
    (:RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING . 4)
    (:RECEIVER_STATUS_ANTENNA_UNPOWERED . 8)
    (:RECEIVER_STATUS_LNA_FAILURE . 16)
    (:RECEIVER_STATUS_ANTENNA_OPEN . 32)
    (:RECEIVER_STATUS_ANTENNA_SHORTED . 64)
    (:RECEIVER_STATUS_CPU_OVERLOADED . 128)
    (:RECEIVER_STATUS_COM1_BUFFER_OVERRUN . 256)
    (:RECEIVER_STATUS_COM2_BUFFER_OVERRUN . 512)
    (:RECEIVER_STATUS_COM3_BUFFER_OVERRUN . 1024)
    (:RECEIVER_STATUS_LINK_OVERLOAD . 2048)
    (:RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN . 8192)
    (:RECEIVER_STATUS_AGC_OUT_OF_RANGE . 16384)
    (:RECEIVER_STATUS_INS_RESET . 65536)
    (:RECEIVER_STATUS_ALMANAC_INVALID . 262144)
    (:RECEIVER_STATUS_POSITION_SOLUTION_INVALID . 524288)
    (:RECEIVER_STATUS_POSITION_NOT_FIXED . 1048576)
    (:RECEIVER_STATUS_CLOCK_STEERING_DISABLED . 2097152)
    (:RECEIVER_STATUS_CLOCK_MODEL_INVALID . 4194304)
    (:RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED . 8388608)
    (:RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING . 16777216)
    (:RECEIVER_STATUS_AUXILIARY3_EVENT . 536870912)
    (:RECEIVER_STATUS_AUXILIARY2_EVENT . 1073741824)
    (:RECEIVER_STATUS_AUXILIARY1_EVENT . 2147483648))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonHeader>) ostream)
  "Serializes a message object of type '<CommonHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port_addr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idle_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week_milliseconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week_milliseconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_week_milliseconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_week_milliseconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'software_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'software_version)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonHeader>) istream)
  "Deserializes a message object of type '<CommonHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port_addr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idle_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week_milliseconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week_milliseconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_week_milliseconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_week_milliseconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'software_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'software_version)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonHeader>)))
  "Returns string type for a message object of type '<CommonHeader>"
  "novatel_msgs/CommonHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonHeader)))
  "Returns string type for a message object of type 'CommonHeader"
  "novatel_msgs/CommonHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonHeader>)))
  "Returns md5sum for a message object of type '<CommonHeader>"
  "494e77bac04f74a099ad631ab2cec829")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonHeader)))
  "Returns md5sum for a message object of type 'CommonHeader"
  "494e77bac04f74a099ad631ab2cec829")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonHeader>)))
  "Returns full string definition for message of type '<CommonHeader>"
  (cl:format cl:nil "# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonHeader)))
  "Returns full string definition for message of type 'CommonHeader"
  (cl:format cl:nil "# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonHeader>))
  (cl:+ 0
     2
     1
     1
     2
     2
     1
     1
     2
     4
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonHeader
    (cl:cons ':id (id msg))
    (cl:cons ':msg_type (msg_type msg))
    (cl:cons ':port_addr (port_addr msg))
    (cl:cons ':length (length msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':idle_time (idle_time msg))
    (cl:cons ':time_status (time_status msg))
    (cl:cons ':gps_week (gps_week msg))
    (cl:cons ':gps_week_milliseconds (gps_week_milliseconds msg))
    (cl:cons ':receiver_status (receiver_status msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':software_version (software_version msg))
))
