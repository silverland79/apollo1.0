/***************************************************************************
 * 
 * Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/

#ifndef ROS_SHM_MANAGER_H
#define ROS_SHM_MANAGER_H

#include <memory>
#include <mutex>
#include <thread>
#include <map>
#include <boost/make_shared.hpp>
#include <boost/thread/recursive_mutex.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/enable_shared_from_this.hpp>
#include <boost/interprocess/sync/interprocess_mutex.hpp>
#include <boost/interprocess/sync/scoped_lock.hpp>

#include "ros/this_node.h"
#include "ros/ros.h"
#include "roscpp/SharedMemoryHeader.h"
#include "sharedmem_transport/sharedmem_util.h"
#include "ros/topic_manager.h"
#include "ros/subscription.h"
#include "ros/header.h"
#include "ros/this_node.h"
#include "ros/message_deserializer.h"
#include "ros/names.h"
#include <algorithm>
#include "ros/config_comm.h"
#include <thread>

namespace ros 
{

class ShmManager;
typedef boost::shared_ptr<ShmManager> ShmManagerPtr;

class ShmManager
{

public:
  static const ShmManagerPtr& instance();

  ShmManager();
  ~ShmManager();

  void start();
  void shutdown();

  inline bool isStarted()
  {
    return started_;
  }

private:

  struct ItemShm
  {
    sharedmem_transport::SharedMemorySegment* segment_mgr;
    sharedmem_transport::SharedMemoryBlock* descriptors_sub;
    uint32_t queue_size;
    uint8_t** addr_sub;
    bool shm_poll_flag;
    SubscriptionPtr shm_sub_ptr;
    std::string topic_name;
    std::string md5sum;
    std::string callerid;
    std::string datatype;
  };

  std::map<std::string, ItemShm> shm_map_;
  std::vector <std::thread> shm_threads_;

private:
  void threadFunc();
  std::thread server_thread_;
  mutable std::mutex mutex_;
  bool started_;
  boost::interprocess::interprocess_mutex shm_sub_mutex_;
};

}

#endif  // ROS_SHM_MANAGER_H

/* vim: set ts=4 sw=4 sts=4 tw=100 */
