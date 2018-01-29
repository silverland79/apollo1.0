#ifndef SHAREDMEM_TRANSPORT_SHAREDMEM_PUBLISHER_IMPL_H
#define SHAREDMEM_TRANSPORT_SHAREDMEM_PUBLISHER_IMPL_H

#include "roscpp/SharedMemoryRegisterSegment.h"
#include "sharedmem_transport/sharedmem_util.h"
#include "ros/serialization.h"

namespace sharedmem_transport {

/**
 * \brief Class for SharedMemoryPublisherImpl, which implements basic functions
 * for SharedMemoryPublisher.
 *
 */
class SharedMemoryPublisherImpl {
public:
    SharedMemoryPublisherImpl();

    virtual ~SharedMemoryPublisherImpl();

    /**
     * \brief Create topic segment when pulish first msg
     *
     * @param topic: topic name
     * @param index: index which publish_fn needs
     * @param queue_size: block num
     * @param msg_size: msg size
     * @param datatype: datatype
     * @param md5sum: md5sum
     * @param msg_def: msg_def
     * Return result for create topic segment, true or false;
     */
    bool create_topic_segement(const std::string& topic, int32_t& index, uint32_t queue_size, 
            uint64_t msg_size, std::string datatype, std::string md5sum, std::string msg_def);

    /**
     * \brief Publish msg
     *
     * @param message: message which will be published
     * @param queue_size: block num
     * @param sub_num: num of subscribers which needs to read the block
     */
    void publish_msg(const ros::SerializedMessage& message, uint32_t queue_size) {
        // Publish msg to shared memory
        if (!_segment_mgr->write_data(message, queue_size, _descriptors_pub, _addr_pub)) {
            ROS_WARN("==== Publish message failed! ====");
        }
    }

private:
     /**
     * \brief Check if size ratio is valid
     *
     * Return result for size ratio, true or false
     */
    bool check_size_ratio();

    boost::interprocess::managed_shared_memory* _segment;
    SharedMemorySegment* _segment_mgr;
    SharedMemoryBlock* _descriptors_pub;
    uint8_t** _addr_pub;
};

} // namespace sharedmem_transport

#endif // SHAREDMEM_TRANSPORT_SHAREDMEM_PUBLISHER_IMPL_H
