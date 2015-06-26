"""autogenerated by genpy from chapter7_tutorials/NeighborRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NeighborRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "chapter7_tutorials/NeighborRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NeighborRequest, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
"""autogenerated by genpy from chapter7_tutorials/NeighborResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NeighborResponse(genpy.Message):
  _md5sum = "d47fa38754d7599b78e284b89c882f63"
  _type = "chapter7_tutorials/NeighborResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 Neighbor00
int32 Neighbor01
int32 Neighbor02
int32 Neighbor10
int32 Neighbor11
int32 Neighbor12
int32 Neighbor20
int32 Neighbor21
int32 Neighbor22


"""
  __slots__ = ['Neighbor00','Neighbor01','Neighbor02','Neighbor10','Neighbor11','Neighbor12','Neighbor20','Neighbor21','Neighbor22']
  _slot_types = ['int32','int32','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Neighbor00,Neighbor01,Neighbor02,Neighbor10,Neighbor11,Neighbor12,Neighbor20,Neighbor21,Neighbor22

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NeighborResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Neighbor00 is None:
        self.Neighbor00 = 0
      if self.Neighbor01 is None:
        self.Neighbor01 = 0
      if self.Neighbor02 is None:
        self.Neighbor02 = 0
      if self.Neighbor10 is None:
        self.Neighbor10 = 0
      if self.Neighbor11 is None:
        self.Neighbor11 = 0
      if self.Neighbor12 is None:
        self.Neighbor12 = 0
      if self.Neighbor20 is None:
        self.Neighbor20 = 0
      if self.Neighbor21 is None:
        self.Neighbor21 = 0
      if self.Neighbor22 is None:
        self.Neighbor22 = 0
    else:
      self.Neighbor00 = 0
      self.Neighbor01 = 0
      self.Neighbor02 = 0
      self.Neighbor10 = 0
      self.Neighbor11 = 0
      self.Neighbor12 = 0
      self.Neighbor20 = 0
      self.Neighbor21 = 0
      self.Neighbor22 = 0

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
      buff.write(_struct_9i.pack(_x.Neighbor00, _x.Neighbor01, _x.Neighbor02, _x.Neighbor10, _x.Neighbor11, _x.Neighbor12, _x.Neighbor20, _x.Neighbor21, _x.Neighbor22))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.Neighbor00, _x.Neighbor01, _x.Neighbor02, _x.Neighbor10, _x.Neighbor11, _x.Neighbor12, _x.Neighbor20, _x.Neighbor21, _x.Neighbor22,) = _struct_9i.unpack(str[start:end])
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
      buff.write(_struct_9i.pack(_x.Neighbor00, _x.Neighbor01, _x.Neighbor02, _x.Neighbor10, _x.Neighbor11, _x.Neighbor12, _x.Neighbor20, _x.Neighbor21, _x.Neighbor22))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.Neighbor00, _x.Neighbor01, _x.Neighbor02, _x.Neighbor10, _x.Neighbor11, _x.Neighbor12, _x.Neighbor20, _x.Neighbor21, _x.Neighbor22,) = _struct_9i.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_9i = struct.Struct("<9i")
class Neighbor(object):
  _type          = 'chapter7_tutorials/Neighbor'
  _md5sum = 'd47fa38754d7599b78e284b89c882f63'
  _request_class  = NeighborRequest
  _response_class = NeighborResponse
