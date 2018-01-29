#ifndef SHAREDMEM_TRANSPORT_SHAREDMEM_SEGMENT_H
#define SHAREDMEM_TRANSPORT_SHAREDMEM_SEGMENT_H

#include "sharedmem_transport/sharedmem_block.h"
#include "ros/message_deserializer.h"
#include "ros/subscription_callback_helper.h"
#include "ros/forwards.h"

namespace sharedmem_transport {

/**
 * \brief Class for Shared Memory Segment, which is defined to describer the segment
 *
 */
class SharedMemorySegment {
public:
    SharedMemorySegment() : _wrote_num(-1) {
    }

    virtual ~SharedMemorySegment() {
    }

    /**
     * \brief Init all blocks from publisher, before publisher write fisrt msg
     *
     * @param segment: segment pointer
     * @param queue_size: total block num which needs to be allocated
     * @param msg_size: single block size which needs to be allocated
     * @param descriptors_pub: descriptors maped address from sharedmem publisher
     * @param addr_pub: block maped address from sharedmem publisher
     * Return init result, true or false
     */
    bool init_all_blocks(boost::interprocess::managed_shared_memory& segment,
                         uint32_t queue_size, uint64_t msg_size, 
                         SharedMemoryBlock*& descriptors_pub,
                         uint8_t** addr_pub);

    /**
     * \brief Map all blocks from subscriber, before subscriber read first msg
     *
     * @param segment: segment pointer
     * @param queue_size: total block num
     * @param addr_sub: block maped address from sharedmem subscriber
     * Return map result, true or false
     */
    bool map_all_blocks(boost::interprocess::managed_shared_memory*& segment,
                        uint32_t queue_size, uint8_t** addr_sub);

    /**
     * \brief Write data to block for sharedmem publisher
     *
     * @param msg: msg waited to be wrote
     * @param queue_size: total block num
     * @param descriptors_pub: descriptors maped address from sharedmem publisher
     * @param addr_pub: block maped address from sharedmem publisher
     * Return write result, true or false
     */
    bool write_data(const ros::SerializedMessage& msg, uint32_t queue_size,
        SharedMemoryBlock* descriptors_pub, uint8_t** addr_pub);

    /**
     * \brief Read data from block for sharedmem subscriber
     *
     * @param last_read_index: index which is used to record last readable block
     * @param descriptors_sub: descriptors maped address from sharedmem subscriber
     * @param addr_sub: block maped address from sharedmem subscriber
     * @param topic: topic name
     * @param msg_buffer: msg buffer
     * @param msg_size: msg size
     * Return read result, true or false
     */
    bool read_data(int32_t& last_read_index, SharedMemoryBlock* descriptors_sub, 
        uint8_t** addr_sub, const std::string& topic, int32_t& msg_buffer, uint32_t& msg_size);

private:
    /**
     * \brief Reserve writable block according _wrote_num
     *
     * @param queue_size: block num
     * @param descriptors_pub: descriptors maped address from sharedmem publisher
     * Return block index which is used to record writable block
     */
    int32_t reserve_radical_writable_block(uint32_t queue_size, 
        SharedMemoryBlock* descriptors_pub);

    /**
     * \brief Reserve readable block according _wrote_num
     *
     * @param descriptors_sub: descriptors maped address from sharedmem subscriber
     * Return result for reserve readable block, true or false
     */
    bool reserve_radical_readable_block(SharedMemoryBlock* descriptors_sub);

    /**
     * \brief Set _wrote_num, after publisher wrote data to block
     *
     * @param wrote_num: block index which has been wrote last
     */
    inline void set_wrote_num(int32_t wrote_num) {
        boost::interprocess::scoped_lock < boost::interprocess::interprocess_mutex > lock(
            _wrote_num_mutex);

        _wrote_num = wrote_num;
    }

private:
    // Mutex to protect access _wrote_num
    boost::interprocess::interprocess_mutex _wrote_num_mutex;
    boost::interprocess::interprocess_condition _wrote_num_cond;
    int32_t _wrote_num;
};

} // namespace sharedmem_transport

#endif // SHAREDMEM_TRANSPORT_SHAREDMEM_SEGMENT_H
