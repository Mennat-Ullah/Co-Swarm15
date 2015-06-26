; Auto-generated. Do not edit!


(cl:in-package chapter7_tutorials-msg)


;//! \htmlinclude Move.msg.html

(cl:defclass <Move> (roslisp-msg-protocol:ros-message)
  ((M
    :reader M
    :initarg :M
    :type cl:integer
    :initform 0))
)

(cl:defclass Move (<Move>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chapter7_tutorials-msg:<Move> is deprecated: use chapter7_tutorials-msg:Move instead.")))

(cl:ensure-generic-function 'M-val :lambda-list '(m))
(cl:defmethod M-val ((m <Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-msg:M-val is deprecated.  Use chapter7_tutorials-msg:M instead.")
  (M m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move>) ostream)
  "Serializes a message object of type '<Move>"
  (cl:let* ((signed (cl:slot-value msg 'M)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move>) istream)
  "Deserializes a message object of type '<Move>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'M) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move>)))
  "Returns string type for a message object of type '<Move>"
  "chapter7_tutorials/Move")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move)))
  "Returns string type for a message object of type 'Move"
  "chapter7_tutorials/Move")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move>)))
  "Returns md5sum for a message object of type '<Move>"
  "edde3fa002e91a032c7588d79d5320d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move)))
  "Returns md5sum for a message object of type 'Move"
  "edde3fa002e91a032c7588d79d5320d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move>)))
  "Returns full string definition for message of type '<Move>"
  (cl:format cl:nil "int32 M~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move)))
  "Returns full string definition for message of type 'Move"
  (cl:format cl:nil "int32 M~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move>))
  "Converts a ROS message object to a list"
  (cl:list 'Move
    (cl:cons ':M (M msg))
))
