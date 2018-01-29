; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude INSPVAX.msg.html

(cl:defclass <INSPVAX> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type novatel_msgs-msg:CommonHeader
    :initform (cl:make-instance 'novatel_msgs-msg:CommonHeader))
   (ins_status
    :reader ins_status
    :initarg :ins_status
    :type cl:integer
    :initform 0)
   (position_type
    :reader position_type
    :initarg :position_type
    :type cl:integer
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (undulation
    :reader undulation
    :initarg :undulation
    :type cl:float
    :initform 0.0)
   (north_velocity
    :reader north_velocity
    :initarg :north_velocity
    :type cl:float
    :initform 0.0)
   (east_velocity
    :reader east_velocity
    :initarg :east_velocity
    :type cl:float
    :initform 0.0)
   (up_velocity
    :reader up_velocity
    :initarg :up_velocity
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (latitude_std
    :reader latitude_std
    :initarg :latitude_std
    :type cl:float
    :initform 0.0)
   (longitude_std
    :reader longitude_std
    :initarg :longitude_std
    :type cl:float
    :initform 0.0)
   (altitude_std
    :reader altitude_std
    :initarg :altitude_std
    :type cl:float
    :initform 0.0)
   (north_velocity_std
    :reader north_velocity_std
    :initarg :north_velocity_std
    :type cl:float
    :initform 0.0)
   (east_velocity_std
    :reader east_velocity_std
    :initarg :east_velocity_std
    :type cl:float
    :initform 0.0)
   (up_velocity_std
    :reader up_velocity_std
    :initarg :up_velocity_std
    :type cl:float
    :initform 0.0)
   (roll_std
    :reader roll_std
    :initarg :roll_std
    :type cl:float
    :initform 0.0)
   (pitch_std
    :reader pitch_std
    :initarg :pitch_std
    :type cl:float
    :initform 0.0)
   (azimuth_std
    :reader azimuth_std
    :initarg :azimuth_std
    :type cl:float
    :initform 0.0)
   (extended_status
    :reader extended_status
    :initarg :extended_status
    :type cl:integer
    :initform 0)
   (seconds_since_update
    :reader seconds_since_update
    :initarg :seconds_since_update
    :type cl:fixnum
    :initform 0))
)

(cl:defclass INSPVAX (<INSPVAX>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <INSPVAX>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'INSPVAX)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<INSPVAX> is deprecated: use novatel_msgs-msg:INSPVAX instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:header-val is deprecated.  Use novatel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ins_status-val :lambda-list '(m))
(cl:defmethod ins_status-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:ins_status-val is deprecated.  Use novatel_msgs-msg:ins_status instead.")
  (ins_status m))

(cl:ensure-generic-function 'position_type-val :lambda-list '(m))
(cl:defmethod position_type-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:position_type-val is deprecated.  Use novatel_msgs-msg:position_type instead.")
  (position_type m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:latitude-val is deprecated.  Use novatel_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:longitude-val is deprecated.  Use novatel_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:altitude-val is deprecated.  Use novatel_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:undulation-val is deprecated.  Use novatel_msgs-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'north_velocity-val :lambda-list '(m))
(cl:defmethod north_velocity-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:north_velocity-val is deprecated.  Use novatel_msgs-msg:north_velocity instead.")
  (north_velocity m))

(cl:ensure-generic-function 'east_velocity-val :lambda-list '(m))
(cl:defmethod east_velocity-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:east_velocity-val is deprecated.  Use novatel_msgs-msg:east_velocity instead.")
  (east_velocity m))

(cl:ensure-generic-function 'up_velocity-val :lambda-list '(m))
(cl:defmethod up_velocity-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:up_velocity-val is deprecated.  Use novatel_msgs-msg:up_velocity instead.")
  (up_velocity m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:roll-val is deprecated.  Use novatel_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:pitch-val is deprecated.  Use novatel_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:azimuth-val is deprecated.  Use novatel_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'latitude_std-val :lambda-list '(m))
(cl:defmethod latitude_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:latitude_std-val is deprecated.  Use novatel_msgs-msg:latitude_std instead.")
  (latitude_std m))

(cl:ensure-generic-function 'longitude_std-val :lambda-list '(m))
(cl:defmethod longitude_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:longitude_std-val is deprecated.  Use novatel_msgs-msg:longitude_std instead.")
  (longitude_std m))

(cl:ensure-generic-function 'altitude_std-val :lambda-list '(m))
(cl:defmethod altitude_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:altitude_std-val is deprecated.  Use novatel_msgs-msg:altitude_std instead.")
  (altitude_std m))

(cl:ensure-generic-function 'north_velocity_std-val :lambda-list '(m))
(cl:defmethod north_velocity_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:north_velocity_std-val is deprecated.  Use novatel_msgs-msg:north_velocity_std instead.")
  (north_velocity_std m))

(cl:ensure-generic-function 'east_velocity_std-val :lambda-list '(m))
(cl:defmethod east_velocity_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:east_velocity_std-val is deprecated.  Use novatel_msgs-msg:east_velocity_std instead.")
  (east_velocity_std m))

(cl:ensure-generic-function 'up_velocity_std-val :lambda-list '(m))
(cl:defmethod up_velocity_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:up_velocity_std-val is deprecated.  Use novatel_msgs-msg:up_velocity_std instead.")
  (up_velocity_std m))

(cl:ensure-generic-function 'roll_std-val :lambda-list '(m))
(cl:defmethod roll_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:roll_std-val is deprecated.  Use novatel_msgs-msg:roll_std instead.")
  (roll_std m))

(cl:ensure-generic-function 'pitch_std-val :lambda-list '(m))
(cl:defmethod pitch_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:pitch_std-val is deprecated.  Use novatel_msgs-msg:pitch_std instead.")
  (pitch_std m))

(cl:ensure-generic-function 'azimuth_std-val :lambda-list '(m))
(cl:defmethod azimuth_std-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:azimuth_std-val is deprecated.  Use novatel_msgs-msg:azimuth_std instead.")
  (azimuth_std m))

(cl:ensure-generic-function 'extended_status-val :lambda-list '(m))
(cl:defmethod extended_status-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:extended_status-val is deprecated.  Use novatel_msgs-msg:extended_status instead.")
  (extended_status m))

(cl:ensure-generic-function 'seconds_since_update-val :lambda-list '(m))
(cl:defmethod seconds_since_update-val ((m <INSPVAX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:seconds_since_update-val is deprecated.  Use novatel_msgs-msg:seconds_since_update instead.")
  (seconds_since_update m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<INSPVAX>)))
    "Constants for message type '<INSPVAX>"
  '((:INS_STATUS_INACTIVE . 0)
    (:INS_STATUS_ALIGNING . 1)
    (:INS_STATUS_HIGH_VARIANCE . 2)
    (:INS_STATUS_SOLUTION_GOOD . 3)
    (:INS_STATUS_SOLUTION_FREE . 6)
    (:INS_STATUS_ALIGNMENT_COMPLETE . 7)
    (:INS_STATUS_DETERMINING_ORIENTATION . 8)
    (:INS_STATUS_WAITING_INITIALPOS . 9)
    (:POSITION_TYPE_NONE . 0)
    (:POSITION_TYPE_SBAS . 52)
    (:POSITION_TYPE_PSEUDORANGE_SINGLE_POINT . 53)
    (:POSITION_TYPE_PSEUDORANGE_DIFFERENTIAL . 54)
    (:POSITION_TYPE_RTK_FLOAT . 55)
    (:POSITION_TYPE_RTK_FIXED . 56)
    (:POSITION_TYPE_OMNISTAR . 57)
    (:POSITION_TYPE_OMNISTAR_HP . 58)
    (:POSITION_TYPE_OMNISTAR_XP . 59)
    (:POSITION_TYPE_PPP_CONVERGING . 73)
    (:POSITION_TYPE_PPP . 74)
    (:EXTENDED_STATUS_POSITION_UPDATE_APPLIED . 1)
    (:EXTENDED_STATUS_PHASE_UPDATE_APPLIED . 2)
    (:EXTENDED_STATUS_ZUPT_APPLIED . 4)
    (:EXTENDED_STATUS_WHEEL_SENSOR_APPLIED . 8)
    (:EXTENDED_STATUS_HEADING_UPDATE_APPLIED . 16)
    (:EXTENDED_STATUS_INS_SOLUTION_CONVERGED . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'INSPVAX)))
    "Constants for message type 'INSPVAX"
  '((:INS_STATUS_INACTIVE . 0)
    (:INS_STATUS_ALIGNING . 1)
    (:INS_STATUS_HIGH_VARIANCE . 2)
    (:INS_STATUS_SOLUTION_GOOD . 3)
    (:INS_STATUS_SOLUTION_FREE . 6)
    (:INS_STATUS_ALIGNMENT_COMPLETE . 7)
    (:INS_STATUS_DETERMINING_ORIENTATION . 8)
    (:INS_STATUS_WAITING_INITIALPOS . 9)
    (:POSITION_TYPE_NONE . 0)
    (:POSITION_TYPE_SBAS . 52)
    (:POSITION_TYPE_PSEUDORANGE_SINGLE_POINT . 53)
    (:POSITION_TYPE_PSEUDORANGE_DIFFERENTIAL . 54)
    (:POSITION_TYPE_RTK_FLOAT . 55)
    (:POSITION_TYPE_RTK_FIXED . 56)
    (:POSITION_TYPE_OMNISTAR . 57)
    (:POSITION_TYPE_OMNISTAR_HP . 58)
    (:POSITION_TYPE_OMNISTAR_XP . 59)
    (:POSITION_TYPE_PPP_CONVERGING . 73)
    (:POSITION_TYPE_PPP . 74)
    (:EXTENDED_STATUS_POSITION_UPDATE_APPLIED . 1)
    (:EXTENDED_STATUS_PHASE_UPDATE_APPLIED . 2)
    (:EXTENDED_STATUS_ZUPT_APPLIED . 4)
    (:EXTENDED_STATUS_WHEEL_SENSOR_APPLIED . 8)
    (:EXTENDED_STATUS_HEADING_UPDATE_APPLIED . 16)
    (:EXTENDED_STATUS_INS_SOLUTION_CONVERGED . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <INSPVAX>) ostream)
  "Serializes a message object of type '<INSPVAX>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ins_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ins_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ins_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'undulation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'north_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'east_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'north_velocity_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'east_velocity_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'up_velocity_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extended_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'extended_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'extended_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'extended_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seconds_since_update)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seconds_since_update)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <INSPVAX>) istream)
  "Deserializes a message object of type '<INSPVAX>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ins_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ins_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ins_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'undulation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'north_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'east_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'north_velocity_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'east_velocity_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_velocity_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extended_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'extended_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'extended_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'extended_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seconds_since_update)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seconds_since_update)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<INSPVAX>)))
  "Returns string type for a message object of type '<INSPVAX>"
  "novatel_msgs/INSPVAX")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'INSPVAX)))
  "Returns string type for a message object of type 'INSPVAX"
  "novatel_msgs/INSPVAX")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<INSPVAX>)))
  "Returns md5sum for a message object of type '<INSPVAX>"
  "debd563bca8450a5102017dabebfa754")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'INSPVAX)))
  "Returns md5sum for a message object of type 'INSPVAX"
  "debd563bca8450a5102017dabebfa754")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<INSPVAX>)))
  "Returns full string definition for message of type '<INSPVAX>"
  (cl:format cl:nil "# message 1465~%novatel_msgs/CommonHeader header~%~%# Table 29 in the SPAN on OEM6 manual:~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=121~%uint32 ins_status~%uint32 INS_STATUS_INACTIVE=0~%uint32 INS_STATUS_ALIGNING=1~%uint32 INS_STATUS_HIGH_VARIANCE=2~%uint32 INS_STATUS_SOLUTION_GOOD=3~%uint32 INS_STATUS_SOLUTION_FREE=6~%uint32 INS_STATUS_ALIGNMENT_COMPLETE=7~%uint32 INS_STATUS_DETERMINING_ORIENTATION=8~%uint32 INS_STATUS_WAITING_INITIALPOS=9~%~%# Table 30 in the SPAN on OEM6 manual:~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=124~%uint32 position_type~%uint32 POSITION_TYPE_NONE=0~%uint32 POSITION_TYPE_SBAS=52~%uint32 POSITION_TYPE_PSEUDORANGE_SINGLE_POINT=53~%uint32 POSITION_TYPE_PSEUDORANGE_DIFFERENTIAL=54~%uint32 POSITION_TYPE_RTK_FLOAT=55~%uint32 POSITION_TYPE_RTK_FIXED=56~%uint32 POSITION_TYPE_OMNISTAR=57~%uint32 POSITION_TYPE_OMNISTAR_HP=58~%uint32 POSITION_TYPE_OMNISTAR_XP=59~%uint32 POSITION_TYPE_PPP_CONVERGING=73~%uint32 POSITION_TYPE_PPP=74~%~%float64 latitude~%float64 longitude~%float64 altitude~%~%float32 undulation~%~%float64 north_velocity~%float64 east_velocity~%float64 up_velocity~%~%float64 roll~%float64 pitch~%float64 azimuth~%~%float32 latitude_std~%float32 longitude_std~%float32 altitude_std~%~%float32 north_velocity_std~%float32 east_velocity_std~%float32 up_velocity_std~%~%float32 roll_std~%float32 pitch_std~%float32 azimuth_std~%~%uint32 extended_status~%uint32 EXTENDED_STATUS_POSITION_UPDATE_APPLIED=1~%uint32 EXTENDED_STATUS_PHASE_UPDATE_APPLIED=2~%uint32 EXTENDED_STATUS_ZUPT_APPLIED=4~%uint32 EXTENDED_STATUS_WHEEL_SENSOR_APPLIED=8~%uint32 EXTENDED_STATUS_HEADING_UPDATE_APPLIED=16~%uint32 EXTENDED_STATUS_INS_SOLUTION_CONVERGED=64~%~%uint16 seconds_since_update~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'INSPVAX)))
  "Returns full string definition for message of type 'INSPVAX"
  (cl:format cl:nil "# message 1465~%novatel_msgs/CommonHeader header~%~%# Table 29 in the SPAN on OEM6 manual:~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=121~%uint32 ins_status~%uint32 INS_STATUS_INACTIVE=0~%uint32 INS_STATUS_ALIGNING=1~%uint32 INS_STATUS_HIGH_VARIANCE=2~%uint32 INS_STATUS_SOLUTION_GOOD=3~%uint32 INS_STATUS_SOLUTION_FREE=6~%uint32 INS_STATUS_ALIGNMENT_COMPLETE=7~%uint32 INS_STATUS_DETERMINING_ORIENTATION=8~%uint32 INS_STATUS_WAITING_INITIALPOS=9~%~%# Table 30 in the SPAN on OEM6 manual:~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=124~%uint32 position_type~%uint32 POSITION_TYPE_NONE=0~%uint32 POSITION_TYPE_SBAS=52~%uint32 POSITION_TYPE_PSEUDORANGE_SINGLE_POINT=53~%uint32 POSITION_TYPE_PSEUDORANGE_DIFFERENTIAL=54~%uint32 POSITION_TYPE_RTK_FLOAT=55~%uint32 POSITION_TYPE_RTK_FIXED=56~%uint32 POSITION_TYPE_OMNISTAR=57~%uint32 POSITION_TYPE_OMNISTAR_HP=58~%uint32 POSITION_TYPE_OMNISTAR_XP=59~%uint32 POSITION_TYPE_PPP_CONVERGING=73~%uint32 POSITION_TYPE_PPP=74~%~%float64 latitude~%float64 longitude~%float64 altitude~%~%float32 undulation~%~%float64 north_velocity~%float64 east_velocity~%float64 up_velocity~%~%float64 roll~%float64 pitch~%float64 azimuth~%~%float32 latitude_std~%float32 longitude_std~%float32 altitude_std~%~%float32 north_velocity_std~%float32 east_velocity_std~%float32 up_velocity_std~%~%float32 roll_std~%float32 pitch_std~%float32 azimuth_std~%~%uint32 extended_status~%uint32 EXTENDED_STATUS_POSITION_UPDATE_APPLIED=1~%uint32 EXTENDED_STATUS_PHASE_UPDATE_APPLIED=2~%uint32 EXTENDED_STATUS_ZUPT_APPLIED=4~%uint32 EXTENDED_STATUS_WHEEL_SENSOR_APPLIED=8~%uint32 EXTENDED_STATUS_HEADING_UPDATE_APPLIED=16~%uint32 EXTENDED_STATUS_INS_SOLUTION_CONVERGED=64~%~%uint16 seconds_since_update~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <INSPVAX>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     8
     4
     8
     8
     8
     8
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <INSPVAX>))
  "Converts a ROS message object to a list"
  (cl:list 'INSPVAX
    (cl:cons ':header (header msg))
    (cl:cons ':ins_status (ins_status msg))
    (cl:cons ':position_type (position_type msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':north_velocity (north_velocity msg))
    (cl:cons ':east_velocity (east_velocity msg))
    (cl:cons ':up_velocity (up_velocity msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':latitude_std (latitude_std msg))
    (cl:cons ':longitude_std (longitude_std msg))
    (cl:cons ':altitude_std (altitude_std msg))
    (cl:cons ':north_velocity_std (north_velocity_std msg))
    (cl:cons ':east_velocity_std (east_velocity_std msg))
    (cl:cons ':up_velocity_std (up_velocity_std msg))
    (cl:cons ':roll_std (roll_std msg))
    (cl:cons ':pitch_std (pitch_std msg))
    (cl:cons ':azimuth_std (azimuth_std msg))
    (cl:cons ':extended_status (extended_status msg))
    (cl:cons ':seconds_since_update (seconds_since_update msg))
))
