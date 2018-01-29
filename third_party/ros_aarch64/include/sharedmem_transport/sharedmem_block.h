#ifndef SHAREDMEM_TRANSPORT_SHAREDMEM_BLOCK_H
#define SHAREDMEM_TRANSPORT_SHAREDMEM_BLOCK_H

#include <boost/interprocess/managed_shared_memory.hpp>
#include <boost/interprocess/sync/interprocess_mutex.hpp>
#include <boost/interprocess/sync/interprocess_condition.hpp>
#include <boost/interprocess/sync/scoped_lock.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/interprocess/allocators/allocator.hpp>
#include <boost/interprocess/containers/string.hpp>

#include "ros/message.h"
#include "ros/serialization.h"
#include "ros/init.h"
#include <time.h>
#include <signal.h>
#include <setjmp.h>
#include <inttypes.h>

#include "ros/forwards.h"
#include "ros/message_deserializer.h"
#include "ros/subscription_callback_helper.h"
#include "ros/config_comm.h"

namespace sharedmem_transport {

const float ROS_SHM_BLOCK_SIZE_RATIO = 3; // Allocated size compared to msg size for each block, default 3
const int ROS_SHM_UTIL_SEGMENT_NAME_SIZE = 1000; // Util segment name temp size
const uint64_t ROS_SHM_BLOCK_SIZE = 250; // block size, byte
const uint64_t ROS_SHM_SEGMENT_SIZE = 1000000; // segment size, byte
const uint32_t ROS_SHM_BLOCK_MUTEX_TIMEOUT_SEC = 1; // Timeout for block mutex, sec

/**
 * \brief Class for Shared Memory Block, which is defined to describer the block.
 *
 */
class SharedMemoryBlock {
public:
    SharedMemoryBlock();

    SharedMemoryBlock(bool wf, uint32_t rc, uint32_t ms, uint32_t as, long wt);

    virtual ~SharedMemoryBlock() {
    }

    /**
     * \brief Try reserve block for write
     *
     * Return result for try, true or false
     */
    bool try_reserve_for_radical_write();

    /**
     * \brief Try reserve block for read
     *
     * Return result for try, true or false
     */
    bool try_reserve_for_radical_read();

    /**
     * \brief Release reserve block for write
     *
     */
    void release_reserve_for_radical_write();

    /**
     * \brief Release reserve block for read
     *
     */
    void release_reserve_for_radical_read();

    /**
     * \brief Write to block
     *
     * @param dest: block address
     * @param msg: msg waited to be wrote
     * Return write result, true or false
     */
    bool write_to_block(uint8_t* dest, const ros::SerializedMessage& msg);

    /**
     * \brief Read from block
     *
     * @param msg: msg waited to be deserialized to
     * Return read result, true or false
     */
    bool read_from_block(uint32_t& msg_size);

private:
    /**
     * \brief Serialize msg to block
     *
     * @param dest: block address
     * @param msg: msg waited to be serialized
     * Return serialize result, true or false
     */
    inline bool serialize(uint8_t* dest, const ros::SerializedMessage& msg) {
        ROS_DEBUG("==== Serialize start!!! ====");

        {
            // Check size msg, before serialize
            _msg_size = msg.num_bytes - 4;

            if (_msg_size > _alloc_size) {
                ROS_WARN("==== Msg size overflows the block, serialize failed ====");
                return false;
            }

            // Serialize msg to block
            ROS_DEBUG("==== Serialising to %p, %" PRIu64 " bytes ====", dest, _msg_size);
            memcpy(dest, msg.message_start, _msg_size);

        }

        ROS_DEBUG("==== Serialize end!!! ====");

        return true;
    }

private:
    // Mutex to protect access to _writing_flag, _reading_count
    boost::interprocess::interprocess_mutex _write_read_mutex;
    // When use conservative mechanism, publisher notified subscribers after writing msg.
    boost::interprocess::interprocess_condition _read_cond;
    bool _writing_flag;
    uint32_t _reading_count;

    uint64_t _msg_size;
    uint64_t _alloc_size;

    bool _write_msg_flag;
};

} // namespace sharedmem_transport
#endif // SHAREDMEM_TRANSPORT_SHAREDMEM_BLOCK_H
