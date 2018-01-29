; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude LOGFILESTATUS.msg.html

(cl:defclass <LOGFILESTATUS> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type novatel_msgs-msg:CommonHeader
    :initform (cl:make-instance 'novatel_msgs-msg:CommonHeader))
   (file_state
    :reader file_state
    :initarg :file_state
    :type cl:integer
    :initform 0)
   (filename1
    :reader filename1
    :initarg :filename1
    :type cl:integer
    :initform 0)
   (filename2
    :reader filename2
    :initarg :filename2
    :type cl:integer
    :initform 0)
   (filename3
    :reader filename3
    :initarg :filename3
    :type cl:integer
    :initform 0)
   (filename4
    :reader filename4
    :initarg :filename4
    :type cl:integer
    :initform 0)
   (filename5
    :reader filename5
    :initarg :filename5
    :type cl:integer
    :initform 0)
   (filename6
    :reader filename6
    :initarg :filename6
    :type cl:integer
    :initform 0)
   (filename7
    :reader filename7
    :initarg :filename7
    :type cl:integer
    :initform 0)
   (filename8
    :reader filename8
    :initarg :filename8
    :type cl:integer
    :initform 0)
   (filename9
    :reader filename9
    :initarg :filename9
    :type cl:integer
    :initform 0)
   (filename10
    :reader filename10
    :initarg :filename10
    :type cl:integer
    :initform 0)
   (filename11
    :reader filename11
    :initarg :filename11
    :type cl:integer
    :initform 0)
   (filename12
    :reader filename12
    :initarg :filename12
    :type cl:integer
    :initform 0)
   (filename13
    :reader filename13
    :initarg :filename13
    :type cl:integer
    :initform 0)
   (filename14
    :reader filename14
    :initarg :filename14
    :type cl:integer
    :initform 0)
   (filename15
    :reader filename15
    :initarg :filename15
    :type cl:integer
    :initform 0)
   (filename16
    :reader filename16
    :initarg :filename16
    :type cl:integer
    :initform 0)
   (filename17
    :reader filename17
    :initarg :filename17
    :type cl:integer
    :initform 0)
   (filename18
    :reader filename18
    :initarg :filename18
    :type cl:integer
    :initform 0)
   (filename19
    :reader filename19
    :initarg :filename19
    :type cl:integer
    :initform 0)
   (filename20
    :reader filename20
    :initarg :filename20
    :type cl:integer
    :initform 0)
   (filename21
    :reader filename21
    :initarg :filename21
    :type cl:integer
    :initform 0)
   (filename22
    :reader filename22
    :initarg :filename22
    :type cl:integer
    :initform 0)
   (filename23
    :reader filename23
    :initarg :filename23
    :type cl:integer
    :initform 0)
   (filename24
    :reader filename24
    :initarg :filename24
    :type cl:integer
    :initform 0)
   (filename25
    :reader filename25
    :initarg :filename25
    :type cl:integer
    :initform 0)
   (filename26
    :reader filename26
    :initarg :filename26
    :type cl:integer
    :initform 0)
   (filename27
    :reader filename27
    :initarg :filename27
    :type cl:integer
    :initform 0)
   (filename28
    :reader filename28
    :initarg :filename28
    :type cl:integer
    :initform 0)
   (filename29
    :reader filename29
    :initarg :filename29
    :type cl:integer
    :initform 0)
   (filename30
    :reader filename30
    :initarg :filename30
    :type cl:integer
    :initform 0)
   (filename31
    :reader filename31
    :initarg :filename31
    :type cl:integer
    :initform 0)
   (filename32
    :reader filename32
    :initarg :filename32
    :type cl:integer
    :initform 0)
   (file_size
    :reader file_size
    :initarg :file_size
    :type cl:integer
    :initform 0)
   (storage_medium
    :reader storage_medium
    :initarg :storage_medium
    :type cl:integer
    :initform 0)
   (media_free_space
    :reader media_free_space
    :initarg :media_free_space
    :type cl:integer
    :initform 0)
   (media_capacity
    :reader media_capacity
    :initarg :media_capacity
    :type cl:integer
    :initform 0))
)

(cl:defclass LOGFILESTATUS (<LOGFILESTATUS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LOGFILESTATUS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LOGFILESTATUS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<LOGFILESTATUS> is deprecated: use novatel_msgs-msg:LOGFILESTATUS instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:header-val is deprecated.  Use novatel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'file_state-val :lambda-list '(m))
(cl:defmethod file_state-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:file_state-val is deprecated.  Use novatel_msgs-msg:file_state instead.")
  (file_state m))

(cl:ensure-generic-function 'filename1-val :lambda-list '(m))
(cl:defmethod filename1-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename1-val is deprecated.  Use novatel_msgs-msg:filename1 instead.")
  (filename1 m))

(cl:ensure-generic-function 'filename2-val :lambda-list '(m))
(cl:defmethod filename2-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename2-val is deprecated.  Use novatel_msgs-msg:filename2 instead.")
  (filename2 m))

(cl:ensure-generic-function 'filename3-val :lambda-list '(m))
(cl:defmethod filename3-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename3-val is deprecated.  Use novatel_msgs-msg:filename3 instead.")
  (filename3 m))

(cl:ensure-generic-function 'filename4-val :lambda-list '(m))
(cl:defmethod filename4-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename4-val is deprecated.  Use novatel_msgs-msg:filename4 instead.")
  (filename4 m))

(cl:ensure-generic-function 'filename5-val :lambda-list '(m))
(cl:defmethod filename5-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename5-val is deprecated.  Use novatel_msgs-msg:filename5 instead.")
  (filename5 m))

(cl:ensure-generic-function 'filename6-val :lambda-list '(m))
(cl:defmethod filename6-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename6-val is deprecated.  Use novatel_msgs-msg:filename6 instead.")
  (filename6 m))

(cl:ensure-generic-function 'filename7-val :lambda-list '(m))
(cl:defmethod filename7-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename7-val is deprecated.  Use novatel_msgs-msg:filename7 instead.")
  (filename7 m))

(cl:ensure-generic-function 'filename8-val :lambda-list '(m))
(cl:defmethod filename8-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename8-val is deprecated.  Use novatel_msgs-msg:filename8 instead.")
  (filename8 m))

(cl:ensure-generic-function 'filename9-val :lambda-list '(m))
(cl:defmethod filename9-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename9-val is deprecated.  Use novatel_msgs-msg:filename9 instead.")
  (filename9 m))

(cl:ensure-generic-function 'filename10-val :lambda-list '(m))
(cl:defmethod filename10-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename10-val is deprecated.  Use novatel_msgs-msg:filename10 instead.")
  (filename10 m))

(cl:ensure-generic-function 'filename11-val :lambda-list '(m))
(cl:defmethod filename11-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename11-val is deprecated.  Use novatel_msgs-msg:filename11 instead.")
  (filename11 m))

(cl:ensure-generic-function 'filename12-val :lambda-list '(m))
(cl:defmethod filename12-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename12-val is deprecated.  Use novatel_msgs-msg:filename12 instead.")
  (filename12 m))

(cl:ensure-generic-function 'filename13-val :lambda-list '(m))
(cl:defmethod filename13-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename13-val is deprecated.  Use novatel_msgs-msg:filename13 instead.")
  (filename13 m))

(cl:ensure-generic-function 'filename14-val :lambda-list '(m))
(cl:defmethod filename14-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename14-val is deprecated.  Use novatel_msgs-msg:filename14 instead.")
  (filename14 m))

(cl:ensure-generic-function 'filename15-val :lambda-list '(m))
(cl:defmethod filename15-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename15-val is deprecated.  Use novatel_msgs-msg:filename15 instead.")
  (filename15 m))

(cl:ensure-generic-function 'filename16-val :lambda-list '(m))
(cl:defmethod filename16-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename16-val is deprecated.  Use novatel_msgs-msg:filename16 instead.")
  (filename16 m))

(cl:ensure-generic-function 'filename17-val :lambda-list '(m))
(cl:defmethod filename17-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename17-val is deprecated.  Use novatel_msgs-msg:filename17 instead.")
  (filename17 m))

(cl:ensure-generic-function 'filename18-val :lambda-list '(m))
(cl:defmethod filename18-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename18-val is deprecated.  Use novatel_msgs-msg:filename18 instead.")
  (filename18 m))

(cl:ensure-generic-function 'filename19-val :lambda-list '(m))
(cl:defmethod filename19-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename19-val is deprecated.  Use novatel_msgs-msg:filename19 instead.")
  (filename19 m))

(cl:ensure-generic-function 'filename20-val :lambda-list '(m))
(cl:defmethod filename20-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename20-val is deprecated.  Use novatel_msgs-msg:filename20 instead.")
  (filename20 m))

(cl:ensure-generic-function 'filename21-val :lambda-list '(m))
(cl:defmethod filename21-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename21-val is deprecated.  Use novatel_msgs-msg:filename21 instead.")
  (filename21 m))

(cl:ensure-generic-function 'filename22-val :lambda-list '(m))
(cl:defmethod filename22-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename22-val is deprecated.  Use novatel_msgs-msg:filename22 instead.")
  (filename22 m))

(cl:ensure-generic-function 'filename23-val :lambda-list '(m))
(cl:defmethod filename23-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename23-val is deprecated.  Use novatel_msgs-msg:filename23 instead.")
  (filename23 m))

(cl:ensure-generic-function 'filename24-val :lambda-list '(m))
(cl:defmethod filename24-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename24-val is deprecated.  Use novatel_msgs-msg:filename24 instead.")
  (filename24 m))

(cl:ensure-generic-function 'filename25-val :lambda-list '(m))
(cl:defmethod filename25-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename25-val is deprecated.  Use novatel_msgs-msg:filename25 instead.")
  (filename25 m))

(cl:ensure-generic-function 'filename26-val :lambda-list '(m))
(cl:defmethod filename26-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename26-val is deprecated.  Use novatel_msgs-msg:filename26 instead.")
  (filename26 m))

(cl:ensure-generic-function 'filename27-val :lambda-list '(m))
(cl:defmethod filename27-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename27-val is deprecated.  Use novatel_msgs-msg:filename27 instead.")
  (filename27 m))

(cl:ensure-generic-function 'filename28-val :lambda-list '(m))
(cl:defmethod filename28-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename28-val is deprecated.  Use novatel_msgs-msg:filename28 instead.")
  (filename28 m))

(cl:ensure-generic-function 'filename29-val :lambda-list '(m))
(cl:defmethod filename29-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename29-val is deprecated.  Use novatel_msgs-msg:filename29 instead.")
  (filename29 m))

(cl:ensure-generic-function 'filename30-val :lambda-list '(m))
(cl:defmethod filename30-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename30-val is deprecated.  Use novatel_msgs-msg:filename30 instead.")
  (filename30 m))

(cl:ensure-generic-function 'filename31-val :lambda-list '(m))
(cl:defmethod filename31-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename31-val is deprecated.  Use novatel_msgs-msg:filename31 instead.")
  (filename31 m))

(cl:ensure-generic-function 'filename32-val :lambda-list '(m))
(cl:defmethod filename32-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:filename32-val is deprecated.  Use novatel_msgs-msg:filename32 instead.")
  (filename32 m))

(cl:ensure-generic-function 'file_size-val :lambda-list '(m))
(cl:defmethod file_size-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:file_size-val is deprecated.  Use novatel_msgs-msg:file_size instead.")
  (file_size m))

(cl:ensure-generic-function 'storage_medium-val :lambda-list '(m))
(cl:defmethod storage_medium-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:storage_medium-val is deprecated.  Use novatel_msgs-msg:storage_medium instead.")
  (storage_medium m))

(cl:ensure-generic-function 'media_free_space-val :lambda-list '(m))
(cl:defmethod media_free_space-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:media_free_space-val is deprecated.  Use novatel_msgs-msg:media_free_space instead.")
  (media_free_space m))

(cl:ensure-generic-function 'media_capacity-val :lambda-list '(m))
(cl:defmethod media_capacity-val ((m <LOGFILESTATUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:media_capacity-val is deprecated.  Use novatel_msgs-msg:media_capacity instead.")
  (media_capacity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LOGFILESTATUS>) ostream)
  "Serializes a message object of type '<LOGFILESTATUS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'file_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'file_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'file_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'file_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename17)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename17)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename17)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename17)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename18)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename18)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename18)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename18)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename19)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename19)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename19)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename19)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename20)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename20)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename20)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename20)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename21)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename21)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename21)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename21)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename22)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename22)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename22)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename22)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename23)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename23)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename23)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename23)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename24)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename24)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename24)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename24)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename25)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename25)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename25)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename25)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename26)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename26)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename26)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename26)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename27)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename27)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename27)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename27)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename28)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename28)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename28)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename28)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename29)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename29)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename29)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename29)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename30)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename30)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename30)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename30)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename31)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename31)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename31)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename31)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'file_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'file_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'file_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'file_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'storage_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'storage_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'storage_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'storage_medium)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'media_free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'media_free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'media_free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'media_free_space)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'media_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'media_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'media_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'media_capacity)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LOGFILESTATUS>) istream)
  "Deserializes a message object of type '<LOGFILESTATUS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'file_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'file_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'file_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'file_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename17)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename17)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename17)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename17)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename18)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename18)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename18)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename18)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename19)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename19)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename19)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename19)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename20)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename20)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename20)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename20)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename21)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename21)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename21)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename21)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename22)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename22)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename22)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename22)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename23)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename23)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename23)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename23)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename24)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename24)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename24)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename24)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename25)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename25)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename25)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename25)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename26)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename26)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename26)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename26)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename27)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename27)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename27)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename27)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename28)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename28)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename28)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename28)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename29)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename29)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename29)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename29)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename30)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename30)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename30)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename30)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename31)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename31)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename31)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename31)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filename32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filename32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filename32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filename32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'file_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'file_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'file_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'file_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'storage_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'storage_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'storage_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'storage_medium)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'media_free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'media_free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'media_free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'media_free_space)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'media_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'media_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'media_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'media_capacity)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LOGFILESTATUS>)))
  "Returns string type for a message object of type '<LOGFILESTATUS>"
  "novatel_msgs/LOGFILESTATUS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LOGFILESTATUS)))
  "Returns string type for a message object of type 'LOGFILESTATUS"
  "novatel_msgs/LOGFILESTATUS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LOGFILESTATUS>)))
  "Returns md5sum for a message object of type '<LOGFILESTATUS>"
  "74eb235b0db9d292dfd0c8e219308901")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LOGFILESTATUS)))
  "Returns md5sum for a message object of type 'LOGFILESTATUS"
  "74eb235b0db9d292dfd0c8e219308901")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LOGFILESTATUS>)))
  "Returns full string definition for message of type '<LOGFILESTATUS>"
  (cl:format cl:nil "# Response for LOGFILESTATUS~%~%novatel_msgs/CommonHeader header~%~%uint32 		file_state~%~%uint32  	filename1~%uint32  	filename2~%uint32  	filename3~%uint32  	filename4~%uint32  	filename5~%uint32  	filename6~%uint32  	filename7~%uint32  	filename8~%uint32  	filename9~%uint32  	filename10~%uint32      filename11~%uint32  	filename12~%uint32  	filename13~%uint32  	filename14~%uint32  	filename15~%uint32  	filename16~%uint32  	filename17~%uint32  	filename18~%uint32  	filename19~%uint32  	filename20~%uint32  	filename21~%uint32  	filename22~%uint32  	filename23~%uint32  	filename24~%uint32  	filename25~%uint32  	filename26~%uint32  	filename27~%uint32  	filename28~%uint32  	filename29~%uint32  	filename30~%uint32  	filename31~%uint32  	filename32~%~%uint32 		file_size~%uint32 		storage_medium~%uint32 		media_free_space~%uint32 		media_capacity~%~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LOGFILESTATUS)))
  "Returns full string definition for message of type 'LOGFILESTATUS"
  (cl:format cl:nil "# Response for LOGFILESTATUS~%~%novatel_msgs/CommonHeader header~%~%uint32 		file_state~%~%uint32  	filename1~%uint32  	filename2~%uint32  	filename3~%uint32  	filename4~%uint32  	filename5~%uint32  	filename6~%uint32  	filename7~%uint32  	filename8~%uint32  	filename9~%uint32  	filename10~%uint32      filename11~%uint32  	filename12~%uint32  	filename13~%uint32  	filename14~%uint32  	filename15~%uint32  	filename16~%uint32  	filename17~%uint32  	filename18~%uint32  	filename19~%uint32  	filename20~%uint32  	filename21~%uint32  	filename22~%uint32  	filename23~%uint32  	filename24~%uint32  	filename25~%uint32  	filename26~%uint32  	filename27~%uint32  	filename28~%uint32  	filename29~%uint32  	filename30~%uint32  	filename31~%uint32  	filename32~%~%uint32 		file_size~%uint32 		storage_medium~%uint32 		media_free_space~%uint32 		media_capacity~%~%~%================================================================================~%MSG: novatel_msgs/CommonHeader~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Message ID of the log being output.~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%uint8 port_addr~%uint16 length~%uint16 sequence~%~%uint8 idle_time~%uint8 time_status~%~%uint16 gps_week~%uint32 gps_week_milliseconds~%~%# Table 3 in the SPAN on OEM6 manual.~%# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=13~%uint32 receiver_status~%uint32 RECEIVER_STATUS_ERROR=1~%uint32 RECEIVER_STATUS_TEMPERATURE_WARNING=2~%uint32 RECEIVER_STATUS_VOLTAGE_SUPPLY_WARNING=4~%uint32 RECEIVER_STATUS_ANTENNA_UNPOWERED=8~%uint32 RECEIVER_STATUS_LNA_FAILURE=16~%uint32 RECEIVER_STATUS_ANTENNA_OPEN=32~%uint32 RECEIVER_STATUS_ANTENNA_SHORTED=64~%uint32 RECEIVER_STATUS_CPU_OVERLOADED=128~%uint32 RECEIVER_STATUS_COM1_BUFFER_OVERRUN=256~%uint32 RECEIVER_STATUS_COM2_BUFFER_OVERRUN=512~%uint32 RECEIVER_STATUS_COM3_BUFFER_OVERRUN=1024~%uint32 RECEIVER_STATUS_LINK_OVERLOAD=2048~%uint32 RECEIVER_STATUS_AUX_TRANSMIT_OVERRUN=8192~%uint32 RECEIVER_STATUS_AGC_OUT_OF_RANGE=16384~%uint32 RECEIVER_STATUS_INS_RESET=65536~%uint32 RECEIVER_STATUS_ALMANAC_INVALID=262144~%uint32 RECEIVER_STATUS_POSITION_SOLUTION_INVALID=524288~%uint32 RECEIVER_STATUS_POSITION_NOT_FIXED=1048576~%uint32 RECEIVER_STATUS_CLOCK_STEERING_DISABLED=2097152~%uint32 RECEIVER_STATUS_CLOCK_MODEL_INVALID=4194304~%uint32 RECEIVER_STATUS_EXTERNAL_OSCILLATOR_LOCKED=8388608~%uint32 RECEIVER_STATUS_SOFTWARE_RESOURCE_WARNING=16777216~%uint32 RECEIVER_STATUS_AUXILIARY3_EVENT=536870912~%uint32 RECEIVER_STATUS_AUXILIARY2_EVENT=1073741824~%uint32 RECEIVER_STATUS_AUXILIARY1_EVENT=2147483648~%~%uint16 reserved~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LOGFILESTATUS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LOGFILESTATUS>))
  "Converts a ROS message object to a list"
  (cl:list 'LOGFILESTATUS
    (cl:cons ':header (header msg))
    (cl:cons ':file_state (file_state msg))
    (cl:cons ':filename1 (filename1 msg))
    (cl:cons ':filename2 (filename2 msg))
    (cl:cons ':filename3 (filename3 msg))
    (cl:cons ':filename4 (filename4 msg))
    (cl:cons ':filename5 (filename5 msg))
    (cl:cons ':filename6 (filename6 msg))
    (cl:cons ':filename7 (filename7 msg))
    (cl:cons ':filename8 (filename8 msg))
    (cl:cons ':filename9 (filename9 msg))
    (cl:cons ':filename10 (filename10 msg))
    (cl:cons ':filename11 (filename11 msg))
    (cl:cons ':filename12 (filename12 msg))
    (cl:cons ':filename13 (filename13 msg))
    (cl:cons ':filename14 (filename14 msg))
    (cl:cons ':filename15 (filename15 msg))
    (cl:cons ':filename16 (filename16 msg))
    (cl:cons ':filename17 (filename17 msg))
    (cl:cons ':filename18 (filename18 msg))
    (cl:cons ':filename19 (filename19 msg))
    (cl:cons ':filename20 (filename20 msg))
    (cl:cons ':filename21 (filename21 msg))
    (cl:cons ':filename22 (filename22 msg))
    (cl:cons ':filename23 (filename23 msg))
    (cl:cons ':filename24 (filename24 msg))
    (cl:cons ':filename25 (filename25 msg))
    (cl:cons ':filename26 (filename26 msg))
    (cl:cons ':filename27 (filename27 msg))
    (cl:cons ':filename28 (filename28 msg))
    (cl:cons ':filename29 (filename29 msg))
    (cl:cons ':filename30 (filename30 msg))
    (cl:cons ':filename31 (filename31 msg))
    (cl:cons ':filename32 (filename32 msg))
    (cl:cons ':file_size (file_size msg))
    (cl:cons ':storage_medium (storage_medium msg))
    (cl:cons ':media_free_space (media_free_space msg))
    (cl:cons ':media_capacity (media_capacity msg))
))
