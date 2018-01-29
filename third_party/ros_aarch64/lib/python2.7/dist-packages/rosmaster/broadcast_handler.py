#!/usr/bin/env python
# -*- coding: utf-8 -*-
########################################################################
#
# Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved
#
########################################################################

"""
File: broadcast_manager.py
Author: haifeng(haifeng@baidu.com)
Date: 2016/11/30 19:23:31
"""
import os
import json
import time
import socket
import struct
import decimal
import logging
import traceback
import threading
import functools

import rospy.core
from rospy.core import signal_shutdown
from rospy.impl.registration import Registration
from rospy.impl.registration import get_topic_manager
from rospy.impl.registration import get_service_manager
from rospy.impl.registration import get_node_handler
from rosgraph.network import parse_http_host_and_port,get_host_name

import sys
env = os.environ.get('LD_LIBRARY_PATH')
for sub_path in env.split(':'):
    sys.path.append(sub_path)
from rospy.impl import participant

REQUEST_TYPE = 'request_type'
NODE_NAME = 'node_name'
XMLRPC_URI = 'xmlrpc_uri'
TIMESTAMP = 'timestamp'

NODE_TIME = "node_time"
TOPIC_NAME = "topic_name"
TOPIC_TYPE = "topic_type"
TOPIC_URI = "topic_uri"

SERVICE_NAME = "service_name"
SERVICE_TYPE = "service_type"
SERVICE_URI = "service_uri"

class Singleton(type):
    _instances = {}
    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]

class BroadcastHandler(object):

    """
    BroadcastHandler.
    """
    __metaclass__ = Singleton

    def __init__(self, handler):
        """
        brief info for: __init__
        """
        super(BroadcastHandler, self).__init__()

        self._logger = logging.getLogger(__name__)
        self._logger.setLevel(logging.INFO)

        self.callback = ["registerPublisher",
                         "unregisterPublisher",
                         "registerSubscriber",
                         "unregisterSubscriber",
                         "registerService",
                         "unregisterService",
                         "lookupService",
                         "getTopicTypes",
                         "lookupNode",
                         ]

        self._handler = handler
        self._name = "rosmaster"
        self._participant = participant.Participant(self._name)
        self._participant.init_py()
        self._broardcast_manager_thread = threading.Thread(
            target=self.run, args=())
        self._broardcast_manager_thread.setDaemon(True)
        self._broardcast_manager_thread.start()

    def run(self):
        """
        brief info for: thread run method
        """
        #print "starting broadcast_manager!"
        self._logger.debug("starting broadcast_manager!")

        while True:
            try:
                msg = self._participant.read_msg()
                if msg is None:
                    continue
                if(len(msg) > 0):
                    data = self._unpack_msg(msg.strip())
                        
                    self._logger.debug("recv data: %s " % data)

                    if data[REQUEST_TYPE] in self.callback:
                        cb = '_' + data[REQUEST_TYPE] + "Callback"
                        func = getattr(self, cb)
                        func(data)
                        pass
                    else:
                        self._logger.error("[broadcast_handler] invalid request type: %s" % data[REQUEST_TYPE])
                else:
                    time.sleep(0.005)

            except Exception as e:
                self._logger.error("broadcast_manager thread error is  %s" % e)
                print("broadcast_manager thread error is  %s" % e)
            finally:
                pass


    def getUri(self, caller_id):
        """
        getUri
        """        
        return 1, "", self._uri 

    def getPid(self, caller_id):
        """
        Get the PID of this server
        """
        return 1, "", os.getpid()

    def _registerPublisherCallback(self, data):
        name = data[NODE_NAME]
        topic = data[TOPIC_NAME]
        datatype = data[TOPIC_TYPE]
        uri = data[XMLRPC_URI]
        #print(data)
        self._handler.registerPublisher(name, topic, datatype, uri)

    def _unregisterPublisherCallback(self, data):
        name = data[NODE_NAME]
        topic = data[TOPIC_NAME]
        uri = data[XMLRPC_URI]
        self._handler.unregisterPublisher(name, topic, uri)

    def _registerSubscriberCallback(self, data):
        name = data[NODE_NAME]
        topic = data[TOPIC_NAME]
        datatype = data[TOPIC_TYPE]
        uri = data[XMLRPC_URI]
        self._handler.registerSubscriber(name, topic, datatype, uri)

    def _unregisterSubscriberCallback(self, data):
        name = data[NODE_NAME]
        topic = data[TOPIC_NAME]
        uri = data[XMLRPC_URI]
        self._handler.unregisterSubscriber(name, topic, uri)

    def _registerServiceCallback(self, data):
        name = data[NODE_NAME]
        service_name = data[SERVICE_NAME]
        service_uri = data[SERVICE_URI]
        uri = data[XMLRPC_URI]
        self._handler.registerService(name, service_name, service_uri, uri)

    def _unregisterServiceCallback(self, data):
        name = data[NODE_NAME]
        service_name = data[SERVICE_NAME]
        service_uri = data[SERVICE_URI]
        self._handler.unregisterService(name, service_name, service_uri)
 
    def _send(self, data):
        """
        brief info for: Get _master_handler internal dict stuct according to dict_type
        """
        self._participant.send(data)

    def _recv(self, size=1024):
        """
        brief info for: Get _master_handler internal dict stuct according to dict_type
        """
        msg = addr = None
        try:
            msg, addr = self._sock.recvfrom(size)
        except Exception as e:
            self._logger.error("socket recv error is  %s" % e)
            self._logger.error(traceback.format_exc())
        finally:
            pass
        return msg, addr

    def _unpack_msg(self, msg):
        data = json.loads(msg)
        return data

    def _pack_msg(self, data):
        return json.dumps(data)
