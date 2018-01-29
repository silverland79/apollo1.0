/*
 * Copyright (C) 2009, Willow Garage, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *   * Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *   * Neither the names of Willow Garage, Inc. nor the names of its
 *     contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef ROSCPP_SERIALIZATION_PROTOBUFFER_H
#define ROSCPP_SERIALIZATION_PROTOBUFFER_H

#include "roscpp_serialization_macros.h"

#include <ros/types.h>
#include <ros/time.h>

#include "serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/exception.h"
#include "ros/datatypes.h"

#include <vector>
#include <map>

#include <boost/array.hpp>
#include <boost/call_traits.hpp>
#include <boost/utility/enable_if.hpp>
#include <boost/mpl/and.hpp>
#include <boost/mpl/or.hpp>
#include <boost/mpl/not.hpp>
#include <boost/type_traits/is_base_of.hpp>

#include <cstring>

#include <google/protobuf/message.h>

namespace ros
{
namespace serialization
{
//protobuffer serialization
template<typename T>
struct Serializer<T, typename boost::enable_if<boost::is_base_of< ::google::protobuf::Message, T> >::type>
{
  template<typename Stream>
  inline static void write(Stream& stream, const T& t)
  {
    std::string pb_str;
    t.SerializeToString(&pb_str);
    stream.next(pb_str);
  }

  template<typename Stream>
  inline static void read(Stream& stream, T& t)
  {
    std::string pb_str;
    stream.next(pb_str);
    t.ParseFromString(pb_str);
  }

  inline static uint32_t serializedLength(const T& t)
  {
    std::string pb_str;
    t.SerializeToString(&pb_str);
    return 4 + (uint32_t)pb_str.size();
  }
};

} // namespace serialization

} // namespace ros

#endif // ROSCPP_SERIALIZATION_H
