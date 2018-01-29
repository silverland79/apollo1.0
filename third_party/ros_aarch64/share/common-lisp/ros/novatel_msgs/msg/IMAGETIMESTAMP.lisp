; Auto-generated. Do not edit!


(cl:in-package novatel_msgs-msg)


;//! \htmlinclude IMAGETIMESTAMP.msg.html

(cl:defclass <IMAGETIMESTAMP> (roslisp-msg-protocol:ros-message)
  ((seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (gps_week
    :reader gps_week
    :initarg :gps_week
    :type cl:integer
    :initform 0)
   (gps_week_milliseconds
    :reader gps_week_milliseconds
    :initarg :gps_week_milliseconds
    :type cl:integer
    :initform 0))
)

(cl:defclass IMAGETIMESTAMP (<IMAGETIMESTAMP>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IMAGETIMESTAMP>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IMAGETIMESTAMP)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_msgs-msg:<IMAGETIMESTAMP> is deprecated: use novatel_msgs-msg:IMAGETIMESTAMP instead.")))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <IMAGETIMESTAMP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:seq-val is deprecated.  Use novatel_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'gps_week-val :lambda-list '(m))
(cl:defmethod gps_week-val ((m <IMAGETIMESTAMP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gps_week-val is deprecated.  Use novatel_msgs-msg:gps_week instead.")
  (gps_week m))

(cl:ensure-generic-function 'gps_week_milliseconds-val :lambda-list '(m))
(cl:defmethod gps_week_milliseconds-val ((m <IMAGETIMESTAMP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_msgs-msg:gps_week_milliseconds-val is deprecated.  Use novatel_msgs-msg:gps_week_milliseconds instead.")
  (gps_week_milliseconds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IMAGETIMESTAMP>) ostream)
  "Serializes a message object of type '<IMAGETIMESTAMP>"
  (cl:let* ((signed (cl:slot-value msg 'seq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gps_week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gps_week_milliseconds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IMAGETIMESTAMP>) istream)
  "Deserializes a message object of type '<IMAGETIMESTAMP>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'seq) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_week) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_week_milliseconds) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IMAGETIMESTAMP>)))
  "Returns string type for a message object of type '<IMAGETIMESTAMP>"
  "novatel_msgs/IMAGETIMESTAMP")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IMAGETIMESTAMP)))
  "Returns string type for a message object of type 'IMAGETIMESTAMP"
  "novatel_msgs/IMAGETIMESTAMP")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IMAGETIMESTAMP>)))
  "Returns md5sum for a message object of type '<IMAGETIMESTAMP>"
  "ade458f4c7ad48cd068e379c6dcf5206")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IMAGETIMESTAMP)))
  "Returns md5sum for a message object of type 'IMAGETIMESTAMP"
  "ade458f4c7ad48cd068e379c6dcf5206")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IMAGETIMESTAMP>)))
  "Returns full string definition for message of type '<IMAGETIMESTAMP>"
  (cl:format cl:nil "int32 seq~%int32 gps_week~%int32 gps_week_milliseconds ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IMAGETIMESTAMP)))
  "Returns full string definition for message of type 'IMAGETIMESTAMP"
  (cl:format cl:nil "int32 seq~%int32 gps_week~%int32 gps_week_milliseconds ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IMAGETIMESTAMP>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IMAGETIMESTAMP>))
  "Converts a ROS message object to a list"
  (cl:list 'IMAGETIMESTAMP
    (cl:cons ':seq (seq msg))
    (cl:cons ':gps_week (gps_week msg))
    (cl:cons ':gps_week_milliseconds (gps_week_milliseconds msg))
))
