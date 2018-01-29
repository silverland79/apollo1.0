; Auto-generated. Do not edit!


(cl:in-package tf2_msgs-msg)


;//! \htmlinclude LookupTransformResult.msg.html

(cl:defclass <LookupTransformResult> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (error
    :reader error
    :initarg :error
    :type tf2_msgs-msg:TF2Error
    :initform (cl:make-instance 'tf2_msgs-msg:TF2Error)))
)

(cl:defclass LookupTransformResult (<LookupTransformResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookupTransformResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookupTransformResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf2_msgs-msg:<LookupTransformResult> is deprecated: use tf2_msgs-msg:LookupTransformResult instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <LookupTransformResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf2_msgs-msg:transform-val is deprecated.  Use tf2_msgs-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <LookupTransformResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf2_msgs-msg:error-val is deprecated.  Use tf2_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookupTransformResult>) ostream)
  "Serializes a message object of type '<LookupTransformResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookupTransformResult>) istream)
  "Deserializes a message object of type '<LookupTransformResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookupTransformResult>)))
  "Returns string type for a message object of type '<LookupTransformResult>"
  "tf2_msgs/LookupTransformResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookupTransformResult)))
  "Returns string type for a message object of type 'LookupTransformResult"
  "tf2_msgs/LookupTransformResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookupTransformResult>)))
  "Returns md5sum for a message object of type '<LookupTransformResult>"
  "3fe5db6a19ca9cfb675418c5ad875c36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookupTransformResult)))
  "Returns md5sum for a message object of type 'LookupTransformResult"
  "3fe5db6a19ca9cfb675418c5ad875c36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookupTransformResult>)))
  "Returns full string definition for message of type '<LookupTransformResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/TransformStamped transform~%tf2_msgs/TF2Error error~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tf2_msgs/TF2Error~%uint8 NO_ERROR = 0~%uint8 LOOKUP_ERROR = 1~%uint8 CONNECTIVITY_ERROR = 2~%uint8 EXTRAPOLATION_ERROR = 3~%uint8 INVALID_ARGUMENT_ERROR = 4~%uint8 TIMEOUT_ERROR = 5~%uint8 TRANSFORM_ERROR = 6~%~%uint8 error~%string error_string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookupTransformResult)))
  "Returns full string definition for message of type 'LookupTransformResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/TransformStamped transform~%tf2_msgs/TF2Error error~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tf2_msgs/TF2Error~%uint8 NO_ERROR = 0~%uint8 LOOKUP_ERROR = 1~%uint8 CONNECTIVITY_ERROR = 2~%uint8 EXTRAPOLATION_ERROR = 3~%uint8 INVALID_ARGUMENT_ERROR = 4~%uint8 TIMEOUT_ERROR = 5~%uint8 TRANSFORM_ERROR = 6~%~%uint8 error~%string error_string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookupTransformResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookupTransformResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LookupTransformResult
    (cl:cons ':transform (transform msg))
    (cl:cons ':error (error msg))
))
