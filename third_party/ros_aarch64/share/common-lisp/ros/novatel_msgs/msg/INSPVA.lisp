; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude INSPVA.msg.html

(cl:defclass <INSPVA> (roslisp-msg-protocol:ros-message)
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
   (velx
    :reader velx
    :initarg :velx
    :type cl:float
    :initform 0.0)
   (vely
    :reader vely
    :initarg :vely
    :type cl:float
    :initform 0.0)
   (velz
    :reader velz
    :initarg :velz
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
   (insstatus
    :reader insstatus
    :initarg :insstatus
    :type cl:integer
    :initform 0))
)

(cl:defclass INSPVA (<INSPVA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <INSPVA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'INSPVA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<INSPVA> is deprecated: use novatel_msgs-msg:INSPVA instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:header-val is deprecated.  Use novatel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:week-val is deprecated.  Use novatel_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'gpssec-val :lambda-list '(m))
(cl:defmethod gpssec-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gpssec-val is deprecated.  Use novatel_msgs-msg:gpssec instead.")
  (gpssec m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:latitude-val is deprecated.  Use novatel_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:longitude-val is deprecated.  Use novatel_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:altitude-val is deprecated.  Use novatel_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'velx-val :lambda-list '(m))
(cl:defmethod velx-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:velx-val is deprecated.  Use novatel_msgs-msg:velx instead.")
  (velx m))

(cl:ensure-generic-function 'vely-val :lambda-list '(m))
(cl:defmethod vely-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:vely-val is deprecated.  Use novatel_msgs-msg:vely instead.")
  (vely m))

(cl:ensure-generic-function 'velz-val :lambda-list '(m))
(cl:defmethod velz-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:velz-val is deprecated.  Use novatel_msgs-msg:velz instead.")
  (velz m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:roll-val is deprecated.  Use novatel_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:pitch-val is deprecated.  Use novatel_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:azimuth-val is deprecated.  Use novatel_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'insstatus-val :lambda-list '(m))
(cl:defmethod insstatus-val ((m <INSPVA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:insstatus-val is deprecated.  Use novatel_msgs-msg:insstatus instead.")
  (insstatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <INSPVA>) ostream)
  "Serializes a message object of type '<INSPVA>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vely))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velz))))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'insstatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'insstatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'insstatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'insstatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <INSPVA>) istream)
  "Deserializes a message object of type '<INSPVA>"
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
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vely) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velz) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'insstatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'insstatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'insstatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'insstatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<INSPVA>)))
  "Returns string type for a message object of type '<INSPVA>"
  "novatel_msgs/INSPVA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'INSPVA)))
  "Returns string type for a message object of type 'INSPVA"
  "novatel_msgs/INSPVA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<INSPVA>)))
  "Returns md5sum for a message object of type '<INSPVA>"
  "86fbbac11eada2d3b2b8df9ef21d22b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'INSPVA)))
  "Returns md5sum for a message object of type 'INSPVA"
  "86fbbac11eada2d3b2b8df9ef21d22b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<INSPVA>)))
  "Returns full string definition for message of type '<INSPVA>"
  (cl:format cl:nil "# message 507~%novatel_msgs/CommonHeader header~%~%int32 week~%float64 gpssec~%~%float64 latitude~%float64 longitude~%float64 altitude~%~%float64 velx~%float64 vely~%float64 velz~%~%float64 roll~%float64 pitch~%float64 azimuth~%~%uint32 insstatus~%~%# uint32 INS_STATUS_INACTIVE=0~%# uint32 INS_STATUS_ALIGNING=1~%# uint32 INS_STATUS_HIGH_VARIANCE=2~%# uint32 INS_STATUS_SOLUTION_GOOD=3~%# uint32 INS_STATUS_SOLUTION_FREE=6~%# uint32 INS_STATUS_ALIGNMENT_COMPLETE=7~%# uint32 INS_STATUS_DETERMINING_ORIENTATION=8~%# uint32 INS_STATUS_WAITING_INITIALPOS=9~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'INSPVA)))
  "Returns full string definition for message of type 'INSPVA"
  (cl:format cl:nil "# message 507~%novatel_msgs/CommonHeader header~%~%int32 week~%float64 gpssec~%~%float64 latitude~%float64 longitude~%float64 altitude~%~%float64 velx~%float64 vely~%float64 velz~%~%float64 roll~%float64 pitch~%float64 azimuth~%~%uint32 insstatus~%~%# uint32 INS_STATUS_INACTIVE=0~%# uint32 INS_STATUS_ALIGNING=1~%# uint32 INS_STATUS_HIGH_VARIANCE=2~%# uint32 INS_STATUS_SOLUTION_GOOD=3~%# uint32 INS_STATUS_SOLUTION_FREE=6~%# uint32 INS_STATUS_ALIGNMENT_COMPLETE=7~%# uint32 INS_STATUS_DETERMINING_ORIENTATION=8~%# uint32 INS_STATUS_WAITING_INITIALPOS=9~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <INSPVA>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <INSPVA>))
  "Converts a ROS message object to a list"
  (cl:list 'INSPVA
    (cl:cons ':header (header msg))
    (cl:cons ':week (week msg))
    (cl:cons ':gpssec (gpssec msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':velx (velx msg))
    (cl:cons ':vely (vely msg))
    (cl:cons ':velz (velz msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':insstatus (insstatus msg))
))
