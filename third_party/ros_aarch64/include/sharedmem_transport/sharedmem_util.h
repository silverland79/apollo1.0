#ifndef SHAREDMEM_TRANSPORT_SHAREDMEM_UTIL_H
#define SHAREDMEM_TRANSPORT_SHAREDMEM_UTIL_H

#include "sharedmem_transport/sharedmem_segment.h"

namespace sharedmem_transport {

typedef boost::interprocess::allocator<char, 
    boost::interprocess::managed_shared_memory::segment_manager> CharAllocator;
typedef boost::interprocess::basic_string<char, std::char_traits<char>, CharAllocator> SHMString;

/**
 * \brief Class for SharedMemoryUtil, defines some util functions of shared memory.

 * 1) create segment, get segment
 * 2) create segment mgr, get segment mgr
 * 3) get block descriptors
 * 4) remove segment
 */
class SharedMemoryUtil {
public:
    SharedMemoryUtil() {
    }

    virtual ~SharedMemoryUtil() {
    }

    /**
     * \brief Get segment pointer, according to topic name
     *
     * @param topic_name: topic name
     * Return segment pointer
     */
    bool init_sharedmem(const char* topic_name,
        boost::interprocess::managed_shared_memory*& segment, SharedMemorySegment*& _segment_mgr,
        SharedMemoryBlock*& _descriptors_sub, uint32_t& queue_size);

    /**
     * \brief Get segment pointer, according to topic name
     *
     * @param topic_name: topic name
     * Return segment pointer
     */
    boost::interprocess::managed_shared_memory* get_segment(const char* topic_name);

    /**
     * \brief Create segment, according to topic name and segment size
     *
     * @param topic_name: topic name
     * @param segment_size: segment size
     * Return segment pointer
     */
    boost::interprocess::managed_shared_memory* create_segment(const char* topic_name,
            uint64_t segment_size);

    /**
     * \brief Get segment manager, according to segment pointer
     *
     * @param segment: segment pointer
     * Return segment manager pointer
     */
    SharedMemorySegment* get_segment_mgr(boost::interprocess::managed_shared_memory*& segment);

    /**
     * \brief Create segment manager, according to segment pointer
     *
     * @param segment: segment pointer
     * Return segment manager pointer
     */
    SharedMemorySegment* create_segment_mgr(boost::interprocess::managed_shared_memory*& segment);

    /**
     * \brief Remove segment, according to segment name
     *
     * @param topic_name: topic name
     * Return result for remove segment
     */
    bool remove_segment(const char* topic_name);

    /**
     * \brief save datatype to shm
     *
     * @param segment: managed shared memory
     * @param content: save content
     */
    void set_datatype(boost::interprocess::managed_shared_memory*& segment, std::string content);

    /**
     * \brief get datatype from shm
     *
     * @param segment: managed shared memory
     * Return result for datatype
     */
    std::string get_datatype(boost::interprocess::managed_shared_memory*& segment);

    /**
     * \brief save md5sum to shm
     *
     * @param segment: managed shared memory
     * @param content: save content
     */
    void set_md5sum(boost::interprocess::managed_shared_memory*& segment, std::string content);

     /**
     * \brief get md5sum from shm
     *
     * @param segment: managed shared memory
     * Return result for md5sum
     */
    std::string get_md5sum(boost::interprocess::managed_shared_memory*& segment);

    /**
     * \brief save message_definition to shm
     *
     * @param segment: managed shared memory
     * @param content: save content
     */
    void set_msg_def(boost::interprocess::managed_shared_memory*& segment, std::string content);

     /**
     * \brief get message_definition from shm
     *
     * @param segment: managed shared memory
     * Return result for message_definition
     */
    std::string get_msg_def(boost::interprocess::managed_shared_memory*& segment);

private:
    /**
     * \brief save object field to shm
     *
     * @param segment: managed shared memory
     * @param string_name: object field
     * @param string_content: save content
     */
    void set_segment_string(boost::interprocess::managed_shared_memory*& segment, 
        std::string string_name, std::string string_content);

    /**
     * \brief save object field to shm
     *
     * @param segment: managed shared memory
     * @param string_name: object field
     * Return result for object field
     */
    std::string get_segment_string(boost::interprocess::managed_shared_memory*& segment, 
        std::string string_name);

    /**
     * \brief Get segment name, according to topic name
     *
     * @param topic_name: topic name
     * @param segment_name: segment name
     */
    void get_segment_name(const char* topic_name, char* segment_name);

    /**
      * \brief Replace all old_char with new_char in src
      *
      * @param src: string which needs to replace
      * @param old_char: char which is replaced
      * @param new_char: char which is used to replace
      * Return string which has been replaced
      */
    char* replace_all(char* src, char old_char, char new_char);

};

} // namespace sharedmem_transport

#endif // SHAREDMEM_TRANSPORT_SHAREDMEM_UTIL_H
