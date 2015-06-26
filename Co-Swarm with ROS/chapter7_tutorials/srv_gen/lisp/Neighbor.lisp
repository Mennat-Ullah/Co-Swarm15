; Auto-generated. Do not edit!


(cl:in-package chapter7_tutorials-srv)


;//! \htmlinclude Neighbor-request.msg.html

(cl:defclass <Neighbor-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Neighbor-request (<Neighbor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Neighbor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Neighbor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chapter7_tutorials-srv:<Neighbor-request> is deprecated: use chapter7_tutorials-srv:Neighbor-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Neighbor-request>) ostream)
  "Serializes a message object of type '<Neighbor-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Neighbor-request>) istream)
  "Deserializes a message object of type '<Neighbor-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Neighbor-request>)))
  "Returns string type for a service object of type '<Neighbor-request>"
  "chapter7_tutorials/NeighborRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Neighbor-request)))
  "Returns string type for a service object of type 'Neighbor-request"
  "chapter7_tutorials/NeighborRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Neighbor-request>)))
  "Returns md5sum for a message object of type '<Neighbor-request>"
  "d47fa38754d7599b78e284b89c882f63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Neighbor-request)))
  "Returns md5sum for a message object of type 'Neighbor-request"
  "d47fa38754d7599b78e284b89c882f63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Neighbor-request>)))
  "Returns full string definition for message of type '<Neighbor-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Neighbor-request)))
  "Returns full string definition for message of type 'Neighbor-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Neighbor-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Neighbor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Neighbor-request
))
;//! \htmlinclude Neighbor-response.msg.html

(cl:defclass <Neighbor-response> (roslisp-msg-protocol:ros-message)
  ((Neighbor00
    :reader Neighbor00
    :initarg :Neighbor00
    :type cl:integer
    :initform 0)
   (Neighbor01
    :reader Neighbor01
    :initarg :Neighbor01
    :type cl:integer
    :initform 0)
   (Neighbor02
    :reader Neighbor02
    :initarg :Neighbor02
    :type cl:integer
    :initform 0)
   (Neighbor10
    :reader Neighbor10
    :initarg :Neighbor10
    :type cl:integer
    :initform 0)
   (Neighbor11
    :reader Neighbor11
    :initarg :Neighbor11
    :type cl:integer
    :initform 0)
   (Neighbor12
    :reader Neighbor12
    :initarg :Neighbor12
    :type cl:integer
    :initform 0)
   (Neighbor20
    :reader Neighbor20
    :initarg :Neighbor20
    :type cl:integer
    :initform 0)
   (Neighbor21
    :reader Neighbor21
    :initarg :Neighbor21
    :type cl:integer
    :initform 0)
   (Neighbor22
    :reader Neighbor22
    :initarg :Neighbor22
    :type cl:integer
    :initform 0))
)

(cl:defclass Neighbor-response (<Neighbor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Neighbor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Neighbor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chapter7_tutorials-srv:<Neighbor-response> is deprecated: use chapter7_tutorials-srv:Neighbor-response instead.")))

(cl:ensure-generic-function 'Neighbor00-val :lambda-list '(m))
(cl:defmethod Neighbor00-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor00-val is deprecated.  Use chapter7_tutorials-srv:Neighbor00 instead.")
  (Neighbor00 m))

(cl:ensure-generic-function 'Neighbor01-val :lambda-list '(m))
(cl:defmethod Neighbor01-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor01-val is deprecated.  Use chapter7_tutorials-srv:Neighbor01 instead.")
  (Neighbor01 m))

(cl:ensure-generic-function 'Neighbor02-val :lambda-list '(m))
(cl:defmethod Neighbor02-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor02-val is deprecated.  Use chapter7_tutorials-srv:Neighbor02 instead.")
  (Neighbor02 m))

(cl:ensure-generic-function 'Neighbor10-val :lambda-list '(m))
(cl:defmethod Neighbor10-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor10-val is deprecated.  Use chapter7_tutorials-srv:Neighbor10 instead.")
  (Neighbor10 m))

(cl:ensure-generic-function 'Neighbor11-val :lambda-list '(m))
(cl:defmethod Neighbor11-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor11-val is deprecated.  Use chapter7_tutorials-srv:Neighbor11 instead.")
  (Neighbor11 m))

(cl:ensure-generic-function 'Neighbor12-val :lambda-list '(m))
(cl:defmethod Neighbor12-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor12-val is deprecated.  Use chapter7_tutorials-srv:Neighbor12 instead.")
  (Neighbor12 m))

(cl:ensure-generic-function 'Neighbor20-val :lambda-list '(m))
(cl:defmethod Neighbor20-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor20-val is deprecated.  Use chapter7_tutorials-srv:Neighbor20 instead.")
  (Neighbor20 m))

(cl:ensure-generic-function 'Neighbor21-val :lambda-list '(m))
(cl:defmethod Neighbor21-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor21-val is deprecated.  Use chapter7_tutorials-srv:Neighbor21 instead.")
  (Neighbor21 m))

(cl:ensure-generic-function 'Neighbor22-val :lambda-list '(m))
(cl:defmethod Neighbor22-val ((m <Neighbor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chapter7_tutorials-srv:Neighbor22-val is deprecated.  Use chapter7_tutorials-srv:Neighbor22 instead.")
  (Neighbor22 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Neighbor-response>) ostream)
  "Serializes a message object of type '<Neighbor-response>"
  (cl:let* ((signed (cl:slot-value msg 'Neighbor00)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor01)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor02)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor10)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor11)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor12)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor20)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor21)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Neighbor22)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Neighbor-response>) istream)
  "Deserializes a message object of type '<Neighbor-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor00) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor01) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor02) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor10) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor11) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor12) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor20) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor21) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Neighbor22) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Neighbor-response>)))
  "Returns string type for a service object of type '<Neighbor-response>"
  "chapter7_tutorials/NeighborResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Neighbor-response)))
  "Returns string type for a service object of type 'Neighbor-response"
  "chapter7_tutorials/NeighborResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Neighbor-response>)))
  "Returns md5sum for a message object of type '<Neighbor-response>"
  "d47fa38754d7599b78e284b89c882f63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Neighbor-response)))
  "Returns md5sum for a message object of type 'Neighbor-response"
  "d47fa38754d7599b78e284b89c882f63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Neighbor-response>)))
  "Returns full string definition for message of type '<Neighbor-response>"
  (cl:format cl:nil "int32 Neighbor00~%int32 Neighbor01~%int32 Neighbor02~%int32 Neighbor10~%int32 Neighbor11~%int32 Neighbor12~%int32 Neighbor20~%int32 Neighbor21~%int32 Neighbor22~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Neighbor-response)))
  "Returns full string definition for message of type 'Neighbor-response"
  (cl:format cl:nil "int32 Neighbor00~%int32 Neighbor01~%int32 Neighbor02~%int32 Neighbor10~%int32 Neighbor11~%int32 Neighbor12~%int32 Neighbor20~%int32 Neighbor21~%int32 Neighbor22~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Neighbor-response>))
  (cl:+ 0
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Neighbor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Neighbor-response
    (cl:cons ':Neighbor00 (Neighbor00 msg))
    (cl:cons ':Neighbor01 (Neighbor01 msg))
    (cl:cons ':Neighbor02 (Neighbor02 msg))
    (cl:cons ':Neighbor10 (Neighbor10 msg))
    (cl:cons ':Neighbor11 (Neighbor11 msg))
    (cl:cons ':Neighbor12 (Neighbor12 msg))
    (cl:cons ':Neighbor20 (Neighbor20 msg))
    (cl:cons ':Neighbor21 (Neighbor21 msg))
    (cl:cons ':Neighbor22 (Neighbor22 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Neighbor)))
  'Neighbor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Neighbor)))
  'Neighbor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Neighbor)))
  "Returns string type for a service object of type '<Neighbor>"
  "chapter7_tutorials/Neighbor")