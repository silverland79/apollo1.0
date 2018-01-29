# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id$

"""
Support library for Python autogenerated message files. This defines
the Message base class used by genmsg_py as well as support
libraries for type checking and retrieving message classes by type
name.
"""

import os
import sys
import rospkg
import roslib

import genmsg
import genpy.message #for wrapping get_message_class, get_service_class

# forward a bunch of old symbols from genpy for backwards compat
from genpy import Message, DeserializationError, SerializationError, \
     Time, Duration, TVal
from genpy.message import get_printable_message_args, fill_message_args
from genpy.message import check_type, strify_message

import google.protobuf.message
from types import MethodType
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import struct

def serialize_protobuf(self, buff):
    try:
        _x = self.SerializeToString()
        length = len(_x)
        if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
        if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

def deserialize_protobuf(self, str):
    try:
        end = 0
        start = end
        end += 4
        (length,) = genpy.struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
            self.ParseFromString(str[start:end].decode('utf-8'))
        else:
            self.ParseFromString(str[start:end])
        return self
    except struct.error as e:
        raise genpy.DeserializationError(e) #most likely buffer underfill

def _get_message_or_service_class(type_str, message_type, reload_on_error=False):
    ## parse package and local type name for import
    package, base_type = genmsg.package_resource_name(message_type)
    if not package:
        if base_type == 'Header':
            package = 'std_msgs'
        else:
            raise ValueError("message type is missing package name: %s"%str(message_type))
    pypkg = val = None
    try: 
        # bootstrap our sys.path
        roslib.launcher.load_manifest(package)
        # import the package and return the class
        pypkg = __import__('%s.%s'%(package, type_str))
        val = getattr(getattr(pypkg, type_str), base_type)
    except rospkg.ResourceNotFound:
        val = None
    except ImportError:
        val = None
    except AttributeError:
        val = None

    # this logic is mainly to support rosh, so that a user doesn't
    # have to exit a shell just because a message wasn't built yet
    if val is None and reload_on_error:
        try:
            if pypkg:
                reload(pypkg)
            val = getattr(getattr(pypkg, type_str), base_type)
        except:
            val = None

    #add message interfac fro protobuf
    add_rosmsg_interface_for_protobuf(val)

    return val
        
## cache for get_message_class
_message_class_cache = {}

## cache for get_service_class
_service_class_cache = {}

def get_message_class(message_type, reload_on_error=False):
    if message_type in _message_class_cache:
        return _message_class_cache[message_type]
    # try w/o bootstrapping
    cls = genpy.message.get_message_class(message_type, reload_on_error=reload_on_error)

    #add message interfac fro protobuf
    add_rosmsg_interface_for_protobuf(cls)

    if cls is None:
        # try old loader w/ bootstrapping
        cls = _get_message_or_service_class('msg', message_type, reload_on_error=reload_on_error)
    if cls:
        _message_class_cache[message_type] = cls
    return cls

def get_service_class(service_type, reload_on_error=False):
    if service_type in _service_class_cache:
        return _service_class_cache[service_type]
    cls = genpy.message.get_service_class(service_type, reload_on_error=reload_on_error)
    # try w/o bootstrapping
    if cls is None:
        # try old loader w/ bootstrapping
        cls = _get_message_or_service_class('srv', service_type, reload_on_error=reload_on_error)
    if cls:
        _service_class_cache[service_type] = cls
    return cls

def add_rosmsg_interface_for_protobuf(cls):
    if cls is not None and issubclass(cls, google.protobuf.message.Message):
        type(cls)._type = property(lambda self: "pb_msgs/" + cls.DESCRIPTOR.name)
        type(cls)._md5sum = property(lambda self: "4b9d2a0751249cf536dca4996d452938")
        type(cls)._full_text = property(lambda self: "string data")
        type(cls)._has_header = property(lambda self: False)
        def set_connection_header(self, value):
            pass
        cls._connection_header = property(lambda self: self._connection_header, set_connection_header)
        setattr(cls, 'deserialize', deserialize_protobuf)
        setattr(cls, 'serialize', serialize_protobuf)
