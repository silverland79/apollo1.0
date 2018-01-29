; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude BESTPOS.msg.html

(cl:defclass <BESTPOS> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type novatel_msgs-msg:CommonHeader
    :initform (cl:make-instance 'novatel_msgs-msg:CommonHeader))
   (solution_status
    :reader solution_status
    :initarg :solution_status
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
   (datum_id
    :reader datum_id
    :initarg :datum_id
    :type cl:integer
    :initform 0)
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
   (stn_id
    :reader stn_id
    :initarg :stn_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0))
   (diff_age
    :reader diff_age
    :initarg :diff_age
    :type cl:float
    :initform 0.0)
   (sol_age
    :reader sol_age
    :initarg :sol_age
    :type cl:float
    :initform 0.0)
   (svs
    :reader svs
    :initarg :svs
    :type cl:fixnum
    :initform 0)
   (sol_svs
    :reader sol_svs
    :initarg :sol_svs
    :type cl:fixnum
    :initform 0)
   (l1_svs
    :reader l1_svs
    :initarg :l1_svs
    :type cl:fixnum
    :initform 0)
   (mult_svs
    :reader mult_svs
    :initarg :mult_svs
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0)
   (extsolstat
    :reader extsolstat
    :initarg :extsolstat
    :type cl:fixnum
    :initform 0)
   (gal_sig_mask
    :reader gal_sig_mask
    :initarg :gal_sig_mask
    :type cl:fixnum
    :initform 0)
   (sig_mask
    :reader sig_mask
    :initarg :sig_mask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BESTPOS (<BESTPOS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BESTPOS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BESTPOS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<BESTPOS> is deprecated: use novatel_msgs-msg:BESTPOS instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:header-val is deprecated.  Use novatel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'solution_status-val :lambda-list '(m))
(cl:defmethod solution_status-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:solution_status-val is deprecated.  Use novatel_msgs-msg:solution_status instead.")
  (solution_status m))

(cl:ensure-generic-function 'position_type-val :lambda-list '(m))
(cl:defmethod position_type-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:position_type-val is deprecated.  Use novatel_msgs-msg:position_type instead.")
  (position_type m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:latitude-val is deprecated.  Use novatel_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:longitude-val is deprecated.  Use novatel_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:altitude-val is deprecated.  Use novatel_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:undulation-val is deprecated.  Use novatel_msgs-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'datum_id-val :lambda-list '(m))
(cl:defmethod datum_id-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:datum_id-val is deprecated.  Use novatel_msgs-msg:datum_id instead.")
  (datum_id m))

(cl:ensure-generic-function 'latitude_std-val :lambda-list '(m))
(cl:defmethod latitude_std-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:latitude_std-val is deprecated.  Use novatel_msgs-msg:latitude_std instead.")
  (latitude_std m))

(cl:ensure-generic-function 'longitude_std-val :lambda-list '(m))
(cl:defmethod longitude_std-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:longitude_std-val is deprecated.  Use novatel_msgs-msg:longitude_std instead.")
  (longitude_std m))

(cl:ensure-generic-function 'altitude_std-val :lambda-list '(m))
(cl:defmethod altitude_std-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:altitude_std-val is deprecated.  Use novatel_msgs-msg:altitude_std instead.")
  (altitude_std m))

(cl:ensure-generic-function 'stn_id-val :lambda-list '(m))
(cl:defmethod stn_id-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:stn_id-val is deprecated.  Use novatel_msgs-msg:stn_id instead.")
  (stn_id m))

(cl:ensure-generic-function 'diff_age-val :lambda-list '(m))
(cl:defmethod diff_age-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:diff_age-val is deprecated.  Use novatel_msgs-msg:diff_age instead.")
  (diff_age m))

(cl:ensure-generic-function 'sol_age-val :lambda-list '(m))
(cl:defmethod sol_age-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:sol_age-val is deprecated.  Use novatel_msgs-msg:sol_age instead.")
  (sol_age m))

(cl:ensure-generic-function 'svs-val :lambda-list '(m))
(cl:defmethod svs-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:svs-val is deprecated.  Use novatel_msgs-msg:svs instead.")
  (svs m))

(cl:ensure-generic-function 'sol_svs-val :lambda-list '(m))
(cl:defmethod sol_svs-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:sol_svs-val is deprecated.  Use novatel_msgs-msg:sol_svs instead.")
  (sol_svs m))

(cl:ensure-generic-function 'l1_svs-val :lambda-list '(m))
(cl:defmethod l1_svs-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:l1_svs-val is deprecated.  Use novatel_msgs-msg:l1_svs instead.")
  (l1_svs m))

(cl:ensure-generic-function 'mult_svs-val :lambda-list '(m))
(cl:defmethod mult_svs-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:mult_svs-val is deprecated.  Use novatel_msgs-msg:mult_svs instead.")
  (mult_svs m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:reserved-val is deprecated.  Use novatel_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'extsolstat-val :lambda-list '(m))
(cl:defmethod extsolstat-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:extsolstat-val is deprecated.  Use novatel_msgs-msg:extsolstat instead.")
  (extsolstat m))

(cl:ensure-generic-function 'gal_sig_mask-val :lambda-list '(m))
(cl:defmethod gal_sig_mask-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gal_sig_mask-val is deprecated.  Use novatel_msgs-msg:gal_sig_mask instead.")
  (gal_sig_mask m))

(cl:ensure-generic-function 'sig_mask-val :lambda-list '(m))
(cl:defmethod sig_mask-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:sig_mask-val is deprecated.  Use novatel_msgs-msg:sig_mask instead.")
  (sig_mask m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BESTPOS>)))
    "Constants for message type '<BESTPOS>"
  '((:SOLUTION_STATUS_SOLUTION_COMPUTED . 0)
    (:SOLUTION_STATUS_INSUFFICIENT_OBSERVATIONS . 1)
    (:SOLUTION_STATUS_NO_CONVERGENCE . 2)
    (:SOLUTION_STATUS_SINGULARITY_AT_PARAMETERS_MATRIX . 3)
    (:SOLUTION_STATUS_COVARIANCE_TRACE_EXCEEDS_MAXIMUM . 4)
    (:SOLUTION_STATUS_TEST_DISTANCE_EXCEEDED . 5)
    (:SOLUTION_STATUS_COLD_START . 6)
    (:SOLUTION_STATUS_VELOCITY_OR_HEIGHT_LIMIT_EXCEEDED . 7)
    (:SOLUTION_STATUS_VARIANCE_EXCEEDS_LIMITS . 8)
    (:SOLUTION_STATUS_RESIDUALS_TOO_LARGE . 9)
    (:SOLUTION_STATUS_INTEGRITY_WARNING . 13)
    (:SOLUTION_STATUS_PENDING . 18)
    (:SOLUTION_STATUS_INVALID_FIX . 19)
    (:SOLUTION_STATUS_INVALID_RATE . 22)
    (:POSITION_TYPE_NONE . 0)
    (:POSITION_TYPE_FIXED . 1)
    (:POSITION_TYPE_FIXEDHEIGHT . 2)
    (:POSITION_TYPE_FLOATCONV . 4)
    (:POSITION_TYPE_WIDELANE . 5)
    (:POSITION_TYPE_NARROWLANE . 6)
    (:POSITION_TYPE_DOPPLER_VELOCITY . 8)
    (:POSITION_TYPE_SINGLE . 16)
    (:POSITION_TYPE_PSRDIFF . 17)
    (:POSITION_TYPE_WAAS . 18)
    (:POSITION_TYPE_PROPAGATED . 19)
    (:POSITION_TYPE_OMNISTAR . 20)
    (:POSITION_TYPE_L1_FLOAT . 32)
    (:POSITION_TYPE_IONOFREE_FLOAT . 33)
    (:POSITION_TYPE_NARROW_FLOAT . 34)
    (:POSITION_TYPE_L1_INT . 48)
    (:POSITION_TYPE_WIDE_INT . 49)
    (:POSITION_TYPE_NARROW_INT . 50)
    (:POSITION_TYPE_RTK_DIRECT_INS . 51)
    (:POSITION_TYPE_INS_SBAS . 52)
    (:POSITION_TYPE_INS_PSRSP . 53)
    (:POSITION_TYPE_INS_PSRDIFF . 54)
    (:POSITION_TYPE_INS_RTKFLOAT . 55)
    (:POSITION_TYPE_INS_RTKFIXED . 56)
    (:POSITION_TYPE_INS_OMNISTAR . 57)
    (:POSITION_TYPE_INS_OMNISTAR_HP . 58)
    (:POSITION_TYPE_INS_OMNISTAR_XP . 59)
    (:POSITION_TYPE_OMNISTAR_HP . 64)
    (:POSITION_TYPE_OMNISTAR_XP . 65)
    (:POSITION_TYPE_PPP_CONVERGING . 68)
    (:POSITION_TYPE_PPP . 69)
    (:POSITION_TYPE_INS_PPP_CONVERGING . 73)
    (:POSITION_TYPE_INS_PPP . 74))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BESTPOS)))
    "Constants for message type 'BESTPOS"
  '((:SOLUTION_STATUS_SOLUTION_COMPUTED . 0)
    (:SOLUTION_STATUS_INSUFFICIENT_OBSERVATIONS . 1)
    (:SOLUTION_STATUS_NO_CONVERGENCE . 2)
    (:SOLUTION_STATUS_SINGULARITY_AT_PARAMETERS_MATRIX . 3)
    (:SOLUTION_STATUS_COVARIANCE_TRACE_EXCEEDS_MAXIMUM . 4)
    (:SOLUTION_STATUS_TEST_DISTANCE_EXCEEDED . 5)
    (:SOLUTION_STATUS_COLD_START . 6)
    (:SOLUTION_STATUS_VELOCITY_OR_HEIGHT_LIMIT_EXCEEDED . 7)
    (:SOLUTION_STATUS_VARIANCE_EXCEEDS_LIMITS . 8)
    (:SOLUTION_STATUS_RESIDUALS_TOO_LARGE . 9)
    (:SOLUTION_STATUS_INTEGRITY_WARNING . 13)
    (:SOLUTION_STATUS_PENDING . 18)
    (:SOLUTION_STATUS_INVALID_FIX . 19)
    (:SOLUTION_STATUS_INVALID_RATE . 22)
    (:POSITION_TYPE_NONE . 0)
    (:POSITION_TYPE_FIXED . 1)
    (:POSITION_TYPE_FIXEDHEIGHT . 2)
    (:POSITION_TYPE_FLOATCONV . 4)
    (:POSITION_TYPE_WIDELANE . 5)
    (:POSITION_TYPE_NARROWLANE . 6)
    (:POSITION_TYPE_DOPPLER_VELOCITY . 8)
    (:POSITION_TYPE_SINGLE . 16)
    (:POSITION_TYPE_PSRDIFF . 17)
    (:POSITION_TYPE_WAAS . 18)
    (:POSITION_TYPE_PROPAGATED . 19)
    (:POSITION_TYPE_OMNISTAR . 20)
    (:POSITION_TYPE_L1_FLOAT . 32)
    (:POSITION_TYPE_IONOFREE_FLOAT . 33)
    (:POSITION_TYPE_NARROW_FLOAT . 34)
    (:POSITION_TYPE_L1_INT . 48)
    (:POSITION_TYPE_WIDE_INT . 49)
    (:POSITION_TYPE_NARROW_INT . 50)
    (:POSITION_TYPE_RTK_DIRECT_INS . 51)
    (:POSITION_TYPE_INS_SBAS . 52)
    (:POSITION_TYPE_INS_PSRSP . 53)
    (:POSITION_TYPE_INS_PSRDIFF . 54)
    (:POSITION_TYPE_INS_RTKFLOAT . 55)
    (:POSITION_TYPE_INS_RTKFIXED . 56)
    (:POSITION_TYPE_INS_OMNISTAR . 57)
    (:POSITION_TYPE_INS_OMNISTAR_HP . 58)
    (:POSITION_TYPE_INS_OMNISTAR_XP . 59)
    (:POSITION_TYPE_OMNISTAR_HP . 64)
    (:POSITION_TYPE_OMNISTAR_XP . 65)
    (:POSITION_TYPE_PPP_CONVERGING . 68)
    (:POSITION_TYPE_PPP . 69)
    (:POSITION_TYPE_INS_PPP_CONVERGING . 73)
    (:POSITION_TYPE_INS_PPP . 74))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BESTPOS>) ostream)
  "Serializes a message object of type '<BESTPOS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'solution_status)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datum_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datum_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'datum_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'datum_id)) ostream)
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
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'stn_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sol_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sol_svs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l1_svs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mult_svs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extsolstat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gal_sig_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sig_mask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BESTPOS>) istream)
  "Deserializes a message object of type '<BESTPOS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
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
  (cl:setf (cl:slot-value msg 'stn_id) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'stn_id)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sol_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'svs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sol_svs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'l1_svs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mult_svs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extsolstat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gal_sig_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sig_mask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BESTPOS>)))
  "Returns string type for a message object of type '<BESTPOS>"
  "novatel_msgs/BESTPOS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BESTPOS)))
  "Returns string type for a message object of type 'BESTPOS"
  "novatel_msgs/BESTPOS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BESTPOS>)))
  "Returns md5sum for a message object of type '<BESTPOS>"
  "d5581fb4806dc0f3c7731c438f6b0cc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BESTPOS)))
  "Returns md5sum for a message object of type 'BESTPOS"
  "d5581fb4806dc0f3c7731c438f6b0cc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BESTPOS>)))
  "Returns full string definition for message of type '<BESTPOS>"
  (cl:format cl:nil "# message 42~%novatel_msgs/CommonHeader header~%~%# Table 21 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=99~%uint32 solution_status~%uint32 SOLUTION_STATUS_SOLUTION_COMPUTED=0~%uint32 SOLUTION_STATUS_INSUFFICIENT_OBSERVATIONS=1~%uint32 SOLUTION_STATUS_NO_CONVERGENCE=2~%uint32 SOLUTION_STATUS_SINGULARITY_AT_PARAMETERS_MATRIX=3~%uint32 SOLUTION_STATUS_COVARIANCE_TRACE_EXCEEDS_MAXIMUM=4~%uint32 SOLUTION_STATUS_TEST_DISTANCE_EXCEEDED=5~%uint32 SOLUTION_STATUS_COLD_START=6~%uint32 SOLUTION_STATUS_VELOCITY_OR_HEIGHT_LIMIT_EXCEEDED=7~%uint32 SOLUTION_STATUS_VARIANCE_EXCEEDS_LIMITS=8~%uint32 SOLUTION_STATUS_RESIDUALS_TOO_LARGE=9~%uint32 SOLUTION_STATUS_INTEGRITY_WARNING=13~%uint32 SOLUTION_STATUS_PENDING=18~%uint32 SOLUTION_STATUS_INVALID_FIX=19~%uint32 SOLUTION_STATUS_INVALID_RATE=22~%~%# Table 22 in the SPAN on OEM6 manual.~%# http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=100~%uint32 position_type~%uint32 POSITION_TYPE_NONE=0~%uint32 POSITION_TYPE_FIXED=1~%uint32 POSITION_TYPE_FIXEDHEIGHT=2~%uint32 POSITION_TYPE_FLOATCONV=4~%uint32 POSITION_TYPE_WIDELANE=5~%uint32 POSITION_TYPE_NARROWLANE=6~%uint32 POSITION_TYPE_DOPPLER_VELOCITY=8~%uint32 POSITION_TYPE_SINGLE=16~%uint32 POSITION_TYPE_PSRDIFF=17~%uint32 POSITION_TYPE_WAAS=18~%uint32 POSITION_TYPE_PROPAGATED=19~%uint32 POSITION_TYPE_OMNISTAR=20~%uint32 POSITION_TYPE_L1_FLOAT=32~%uint32 POSITION_TYPE_IONOFREE_FLOAT=33~%uint32 POSITION_TYPE_NARROW_FLOAT=34~%uint32 POSITION_TYPE_L1_INT=48~%uint32 POSITION_TYPE_WIDE_INT=49~%uint32 POSITION_TYPE_NARROW_INT=50~%uint32 POSITION_TYPE_RTK_DIRECT_INS=51~%uint32 POSITION_TYPE_INS_SBAS=52~%uint32 POSITION_TYPE_INS_PSRSP=53~%uint32 POSITION_TYPE_INS_PSRDIFF=54~%uint32 POSITION_TYPE_INS_RTKFLOAT=55~%uint32 POSITION_TYPE_INS_RTKFIXED=56~%uint32 POSITION_TYPE_INS_OMNISTAR=57~%uint32 POSITION_TYPE_INS_OMNISTAR_HP=58~%uint32 POSITION_TYPE_INS_OMNISTAR_XP=59~%uint32 POSITION_TYPE_OMNISTAR_HP=64~%uint32 POSITION_TYPE_OMNISTAR_XP=65~%uint32 POSITION_TYPE_PPP_CONVERGING=68~%uint32 POSITION_TYPE_PPP=69~%uint32 POSITION_TYPE_INS_PPP_CONVERGING=73~%uint32 POSITION_TYPE_INS_PPP=74~%~%float64 latitude~%float64 longitude~%float64 altitude~%~%float32 undulation~%uint32 datum_id~%~%float32 latitude_std~%float32 longitude_std~%float32 altitude_std~%~%char[4] stn_id~%~%float32 diff_age~%float32 sol_age~%~%uint8 svs~%uint8 sol_svs~%uint8 l1_svs~%uint8 mult_svs~%uint8 reserved~%uint8 extsolstat~%uint8 gal_sig_mask~%uint8 sig_mask~%~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BESTPOS)))
  "Returns full string definition for message of type 'BESTPOS"
  (cl:format cl:nil "# message 42~%novatel_msgs/CommonHeader header~%~%# Table 21 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=99~%uint32 solution_status~%uint32 SOLUTION_STATUS_SOLUTION_COMPUTED=0~%uint32 SOLUTION_STATUS_INSUFFICIENT_OBSERVATIONS=1~%uint32 SOLUTION_STATUS_NO_CONVERGENCE=2~%uint32 SOLUTION_STATUS_SINGULARITY_AT_PARAMETERS_MATRIX=3~%uint32 SOLUTION_STATUS_COVARIANCE_TRACE_EXCEEDS_MAXIMUM=4~%uint32 SOLUTION_STATUS_TEST_DISTANCE_EXCEEDED=5~%uint32 SOLUTION_STATUS_COLD_START=6~%uint32 SOLUTION_STATUS_VELOCITY_OR_HEIGHT_LIMIT_EXCEEDED=7~%uint32 SOLUTION_STATUS_VARIANCE_EXCEEDS_LIMITS=8~%uint32 SOLUTION_STATUS_RESIDUALS_TOO_LARGE=9~%uint32 SOLUTION_STATUS_INTEGRITY_WARNING=13~%uint32 SOLUTION_STATUS_PENDING=18~%uint32 SOLUTION_STATUS_INVALID_FIX=19~%uint32 SOLUTION_STATUS_INVALID_RATE=22~%~%# Table 22 in the SPAN on OEM6 manual.~%# http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=100~%uint32 position_type~%uint32 POSITION_TYPE_NONE=0~%uint32 POSITION_TYPE_FIXED=1~%uint32 POSITION_TYPE_FIXEDHEIGHT=2~%uint32 POSITION_TYPE_FLOATCONV=4~%uint32 POSITION_TYPE_WIDELANE=5~%uint32 POSITION_TYPE_NARROWLANE=6~%uint32 POSITION_TYPE_DOPPLER_VELOCITY=8~%uint32 POSITION_TYPE_SINGLE=16~%uint32 POSITION_TYPE_PSRDIFF=17~%uint32 POSITION_TYPE_WAAS=18~%uint32 POSITION_TYPE_PROPAGATED=19~%uint32 POSITION_TYPE_OMNISTAR=20~%uint32 POSITION_TYPE_L1_FLOAT=32~%uint32 POSITION_TYPE_IONOFREE_FLOAT=33~%uint32 POSITION_TYPE_NARROW_FLOAT=34~%uint32 POSITION_TYPE_L1_INT=48~%uint32 POSITION_TYPE_WIDE_INT=49~%uint32 POSITION_TYPE_NARROW_INT=50~%uint32 POSITION_TYPE_RTK_DIRECT_INS=51~%uint32 POSITION_TYPE_INS_SBAS=52~%uint32 POSITION_TYPE_INS_PSRSP=53~%uint32 POSITION_TYPE_INS_PSRDIFF=54~%uint32 POSITION_TYPE_INS_RTKFLOAT=55~%uint32 POSITION_TYPE_INS_RTKFIXED=56~%uint32 POSITION_TYPE_INS_OMNISTAR=57~%uint32 POSITION_TYPE_INS_OMNISTAR_HP=58~%uint32 POSITION_TYPE_INS_OMNISTAR_XP=59~%uint32 POSITION_TYPE_OMNISTAR_HP=64~%uint32 POSITION_TYPE_OMNISTAR_XP=65~%uint32 POSITION_TYPE_PPP_CONVERGING=68~%uint32 POSITION_TYPE_PPP=69~%uint32 POSITION_TYPE_INS_PPP_CONVERGING=73~%uint32 POSITION_TYPE_INS_PPP=74~%~%float64 latitude~%float64 longitude~%float64 altitude~%~%float32 undulation~%uint32 datum_id~%~%float32 latitude_std~%float32 longitude_std~%float32 altitude_std~%~%char[4] stn_id~%~%float32 diff_age~%float32 sol_age~%~%uint8 svs~%uint8 sol_svs~%uint8 l1_svs~%uint8 mult_svs~%uint8 reserved~%uint8 extsolstat~%uint8 gal_sig_mask~%uint8 sig_mask~%~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BESTPOS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     8
     4
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'stn_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BESTPOS>))
  "Converts a ROS message object to a list"
  (cl:list 'BESTPOS
    (cl:cons ':header (header msg))
    (cl:cons ':solution_status (solution_status msg))
    (cl:cons ':position_type (position_type msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':datum_id (datum_id msg))
    (cl:cons ':latitude_std (latitude_std msg))
    (cl:cons ':longitude_std (longitude_std msg))
    (cl:cons ':altitude_std (altitude_std msg))
    (cl:cons ':stn_id (stn_id msg))
    (cl:cons ':diff_age (diff_age msg))
    (cl:cons ':sol_age (sol_age msg))
    (cl:cons ':svs (svs msg))
    (cl:cons ':sol_svs (sol_svs msg))
    (cl:cons ':l1_svs (l1_svs msg))
    (cl:cons ':mult_svs (mult_svs msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':extsolstat (extsolstat msg))
    (cl:cons ':gal_sig_mask (gal_sig_mask msg))
    (cl:cons ':sig_mask (sig_mask msg))
))
