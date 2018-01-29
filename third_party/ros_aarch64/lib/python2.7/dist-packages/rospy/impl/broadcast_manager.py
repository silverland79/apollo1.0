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

CMD_TIMEOUT = 1.2

REQUEST_TYPE = 'request_type'
NODE_NAME = 'node_name'
XMLRPC_URI = 'xmlrpc_uri'
TIMESTAMP = 'timestamp'

NODE_TIME = "node_time"
TOPIC_NAME = "topic_name"
TOPIC_TYPE = "topic_type"

SERVICE_NAME = "service_name"
SERVICE_TYPE = "service_type"
SERVICE_URI = "service_uri"

"""
class Singleton(object):
    def __new__(cls, *args, **kwargs):
        if not hasattr(cls, '_instance'):
            orig = super(Singleton, cls)
            cls._instance = orig.__new__(cls, *args, **kwargs)
        return cls._instance
"""

class Singleton(type):
    _instances = {}
    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]

def byteify(input):
    if isinstance(input, dict):
        return {byteify(key): byteify(value) for key, value in input.iteritems()}
    elif isinstance(input, list):
        return [byteify(element) for element in input]
    elif isinstance(input, unicode):
        return input.encode('utf-8')
    else:
        return input

class BroadcastManager(object):

    """
    BroadcastManager.
    """
    __metaclass__ = Singleton

    def __init__(self, name=None, callback=None):
        """
        brief info for: __init__
        """
        super(BroadcastManager, self).__init__()

        self._logger = logging.getLogger(__name__)
        self._logger.setLevel(logging.INFO)

        self._service_cache = {}
        self._stat_info = [[], [], []]
        self._node_info = []
        self._topic_info = []
        self._node_time = str(int(round(time.time()*1000)))

        if get_node_handler() is not None:
            self._name = get_node_handler().name
            self._uri = get_node_handler().uri
        else:
            if name is None:
                self._name = "_null_name"
            else:
                self._name = name
            self._uri = "_null_uri"
      
        if callback is None:
            self.callback = ["registerPublisher",
                             "unregisterPublisher",
                             "registerSubscriber",
                             "unregisterSubscriber",
                             "registerService",
                             "unregisterService",
                             "lookupService",
                             "getTopicTypes",
                             "lookupNode",
                             "registerNode",
                             ]
        else:
            self.callback = callback

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

        if get_node_handler() is not None:
            self._name = get_node_handler().name
            
            while get_node_handler().uri is None:
                time.sleep(0.0001) 
            self._uri = get_node_handler().uri

        self._logger.debug("self.name:%s" % self._name)
        self._logger.debug("self.uri:%s" % self._uri)

        self._register_node()
        #self.requestParam()  

        while True:
            try:
                msg = self._participant.read_msg()
                if msg is None:
                    continue
                if(len(msg) > 0):
                    data = self._unpack_msg(msg.strip())
                        
                    if self._name == data[NODE_NAME] \
                            and data[REQUEST_TYPE] == "registerNode" \
                            and self._uri != data[XMLRPC_URI] \
                            and int(data[HEADER_OFFSET]) > int(self._node_time):
                        signal_shutdown("it has already same name node, exit it now.")
                        continue

                    self._logger.debug("recv data: %s " % data)
                    #print("recv data: %s " % data)

                    if data[REQUEST_TYPE] in self.callback:
                        self._registerNodeCallback(data)
                        cb = '_' + data[REQUEST_TYPE] + "Callback"
                        func = getattr(self, cb)
                        func(data)
                        pass
                    else:
                        self._logger.error("[broadcast_manager] invalid request type: %s" % data[REQUEST_TYPE])
                else:
                    time.sleep(0.005)

            except Exception as e:
                self._logger.error("broadcast_manager thread error is  %s" % e)
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

    ###Publisher/Subscirbe Service####

    def registerPublisher(self, name, topic, datatype, uri):
        """
        registerPublisher
        """
        #data = ["registerPublisher", name, topic, datatype, uri]
        data = self._set_header("registerPublisher")
        data[TOPIC_NAME] = topic
        data[TOPIC_TYPE] = datatype
        self._send(self._pack_msg(data))
        return 1, "Registered [%s] as publisher of [%s]" % (name, topic), []

    def unregisterPublisher(self, name, topic, uri):
        """
        unregisterPublisher
        """
        data = self._set_header("unregisterPublisher")
        data[TOPIC_NAME] = topic
        self._send(self._pack_msg(data))
        return 1, "unregisterPublisher" ,0

    def registerSubscriber(self, name, topic, datatype, uri):
        """
        registerSubscriber
        """
        # print  name, topic, datatype, uri
        #data = ["registerSubscriber", name, topic, datatype, uri]
        data = self._set_header("registerSubscriber")
        data[TOPIC_NAME] = topic
        data[TOPIC_TYPE] = datatype
        self._send(self._pack_msg(data))
        return 1, "Subscribed to [%s]" % topic, []

    def unregisterSubscriber(self, name, topic, uri):
        """
        unregisterSubscriber
        """
        data = self._set_header("unregisterSubscriber")
        data[TOPIC_NAME] = topic
        self._send(self._pack_msg(data))
        return 1, "unregisterSubscriber" ,0

    def registerService(self, name, service_name, service_uri, uri):
        """
        registerService
        """
        self._service_cache[service_name] = service_uri
        #data = ["registerService", name, service_name, service_uri, uri]
        data = self._set_header("registerService")
        data[SERVICE_NAME] = service_name
        data[SERVICE_URI] = service_uri
        self._send(self._pack_msg(data))
        return 1, "Registered [%s] as provider of [%s] with service_uri[%s]" % \
            (name, service_name, service_uri), 1

    def unregisterService(self, name, service_name, service_uri):
        """
        unregisterService
        """
        data = self._set_header("unregisterService")
        data[SERVICE_NAME] = service_name
        data[SERVICE_URI] = service_uri
        self._send(self._pack_msg(data))
        return 1, "unregisterService" ,0

    def lookupService(self, caller_id, service_name):
        """
        lookupService
        """
        if service_name in self._service_cache.keys():
            return 1, "rosrpc URI: [%s]" % self._service_cache[service_name], self._service_cache[service_name]
        else:
            return -1, "no provider", ''

    def _registerPublisherCallback(self, data):
        name = data[NODE_NAME]
        topic = data[TOPIC_NAME]
        topic_type = data[TOPIC_TYPE]
        topic_uri = data[XMLRPC_URI]
        url_data = [topic_uri]

        tmp = [topic, [name]]
        if tmp not in self._stat_info[0]:
            self._stat_info[0].append(tmp)

        topic_info = [x for x in self._topic_info if x[0] == topic]
        if topic_info:
            topic_info[0][1] = topic_type
        else:
            self._topic_info.append([topic, topic_type])

        tm = get_topic_manager()
        try:
            tm.lock.acquire()
            if tm.has_subscription(topic):
                self._logger.debug("I has sub topic : %s" % topic)
                get_node_handler().publisherUpdate(name, topic, url_data)
        except Exception as e:
            self._logger.error(
                "registerPublisherCallback error is  %s" % e)
            self._logger.error(traceback.format_exc())
        finally:
            tm.lock.release()

    def _unregisterPublisherCallback(self, data):
        name = data[NODE_NAME]
        topic = data[TOPIC_NAME]
        uri = data[XMLRPC_URI]
        url_data = [uri]

        tm = get_topic_manager()
        try:
            tm.lock.acquire()
            if tm.has_subscription(topic):
                self._logger.debug("I has sub topic, recv unregisSub: %s" % topic)
                get_node_handler().reg_man.reg_removed(topic, url_data, Registration.SUB)
        except Exception as e:
            self._logger.error(
                "unregisterPublisherCallback error is  %s" % e)
            self._logger.error(traceback.format_exc())
        finally:
            tm.lock.release()
     
        pass    

    def _registerSubscriberCallback(self, data):
        name = data[NODE_NAME]
        topic = data[TOPIC_NAME]
        datatype = data[TOPIC_TYPE]
        uri = data[XMLRPC_URI]

        url_data = [uri]

        tmp = [topic, [name]]
        if tmp not in self._stat_info[1]:
            self._stat_info[1].append(tmp) 

        tm = get_topic_manager()
        try:
            tm.lock.acquire()
            if tm.has_publication(topic):
                self._logger.debug("I has pub topic :%s" % topic)
                self.registerPublisher(
                    get_node_handler().name, topic, datatype, get_node_handler().uri)
        except Exception as e:
            self._logger.error(
                "_registerSubscriberCallback error is  %s" % e)
            self._logger.error(traceback.format_exc())
        finally:
            tm.lock.release()

    def _registerServiceCallback(self, data):
        service_name = data[SERVICE_NAME]
        service_uri = data[SERVICE_URI]
        self._service_cache[service_name] = service_uri

    def _unregisterServiceCallback(self, data):
        service_name = data[SERVICE_NAME]
        service_uri = data[SERVICE_URI]
        if service_name in self._service_cache.keys():
            del self._service_cache[service_name]
 
    # def _lookupServiceCallback(self, name, service_name):
    def _lookupServiceCallback(self, data):
        print("deprecated API!")
        name = data[NODE_NAME]
        service_name = data[SERVICE_NAME]
        # if self._service_cache.has_key(service_name):
        if service_name in self._service_cache.keys():
            #print self._uri
            #v = ["registerService", get_node_handler().name, service_name,
            #        self._service_cache[service_name], get_node_handler().uri]
            v = self._set_header("registerService")
            v.append(service_name)
            v.append(self._service_cache[service_name])
            v.append(self._uri)
            self._send(self._pack_msg(v))

    ######Graph Stat#######
    def _registerNodeCallback(self, data):
        name = data[NODE_NAME]
        uri = data[XMLRPC_URI]
        node_info = [x for x in self._node_info if x[0] == name]
        if node_info:
            node_info[0][1] = uri
        else:
            self._node_info.append([name, uri])

    def _register_node(self):
        """
        _register_node
        """
        data = self._set_header("registerNode")
        data[NODE_TIME] = self._node_time
        self._send(self._pack_msg(data))

    def lookupNode(self, caller_id, node_name):
        """
        lookupNode
        """

        #data = ["lookupNode", self._name, node_name]
        """
        data = self._set_header("lookupNode")
        data.append(node_name)
        self._send(self._pack_msg(data))
        # just for test
        """
        node_info = [data for data in  self._node_info if data[0] == node_name]
        if node_info:
            return 1, "node api", node_info[0][1]
        else:
            return -1, "unknown node" ,None

    def _set_header(self, request, timestamp=None):
        if timestamp is None:
            nsec_time = str(int(round(time.time()*1000)))
        else:
            nsec_time = timestamp    
        header = {}
        header[REQUEST_TYPE] = request
        header[NODE_NAME] = self._name
        header[XMLRPC_URI] = self._uri
        header[TIMESTAMP] = nsec_time
        return header

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
        try:
            data = json.loads(msg, object_hook=byteify)
        except Exception as e:
            self._logger.error("parse json failed! %s" % e)
        return data

    def _pack_msg(self, data):
        return json.dumps(data)
