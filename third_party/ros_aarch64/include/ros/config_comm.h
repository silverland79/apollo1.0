/***************************************************************************
 * 
 * Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/

#ifndef CONFIG_COMM_H
#define CONFIG_COMM_H

#include <iostream>
#include <fstream>
#include <vector> 
#include <set>  

namespace ros 
{

struct ConfigComm
{
  std::set<std::string> topic_white_list;
  int transport_mode;
};

}

#endif  // CONFIG_COMM_H
