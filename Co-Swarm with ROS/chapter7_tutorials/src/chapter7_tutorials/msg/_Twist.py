"""autogenerated by genpy from chapter7_tutorials/Twist.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import chapter7_tutorials.msg

class Twist(genpy.Message):
  _md5sum = "9f195f881246fdfa2798d1d3eebca84a"
  _type = "chapter7_tutorials/Twist"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# This expresses velocity in free space broken into it's linear and angular parts. 
Vector3  linear
Vector3  angular

================================================================================
MSG: chapter7_tutorials/Vector3
# This represents a vector in free space. 

float64 x
float64 y
float64 z
"""
  __slots__ = ['linear','angular']
  _slot_types = ['chapter7_tutorials/Vector3','chapter7_tutorials/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       linear,angular

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Twist, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.linear is None:
        self.linear = chapter7_tutorials.msg.Vector3()
      if self.angular is None:
        self.angular = chapter7_tutorials.msg.Vector3()
    else:
      self.linear = chapter7_tutorials.msg.Vector3()
      self.angular = chapter7_tutorials.msg.Vector3()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_6d.pack(_x.linear.x, _x.linear.y, _x.linear.z, _x.angular.x, _x.angular.y, _x.angular.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.linear is None:
        self.linear = chapter7_tutorials.msg.Vector3()
      if self.angular is None:
        self.angular = chapter7_tutorials.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.linear.x, _x.linear.y, _x.linear.z, _x.angular.x, _x.angular.y, _x.angular.z,) = _struct_6d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_6d.pack(_x.linear.x, _x.linear.y, _x.linear.z, _x.angular.x, _x.angular.y, _x.angular.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.linear is None:
        self.linear = chapter7_tutorials.msg.Vector3()
      if self.angular is None:
        self.angular = chapter7_tutorials.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.linear.x, _x.linear.y, _x.linear.z, _x.angular.x, _x.angular.y, _x.angular.z,) = _struct_6d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6d = struct.Struct("<6d")
