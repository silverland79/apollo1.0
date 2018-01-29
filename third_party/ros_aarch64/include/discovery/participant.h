#ifndef ROSCPP_DISCOVERY_PARTICIPANT_H
#define ROSCPP_DISCOVERY_PARTICIPANT_H

#include <inttypes.h>
#include <functional>
#include <string>
#include <vector>
#include <mutex>

#include <fastrtps/participant/Participant.h>
#include <fastrtps/attributes/ParticipantAttributes.h>
#include <fastrtps/attributes/PublisherAttributes.h>
#include <fastrtps/publisher/Publisher.h>
#include <fastrtps/publisher/PublisherListener.h>
#include <fastrtps/attributes/SubscriberAttributes.h>
#include <fastrtps/subscriber/Subscriber.h>
#include <fastrtps/subscriber/SubscriberListener.h>
#include <fastrtps/subscriber/SampleInfo.h>

#include <fastrtps/Domain.h>
#include <fastrtps/utils/eClock.h>

#include "MetaMessagePubSubTypes.h"
#include "MetaMessage.h"

namespace ros {

typedef std::function<void (const std::string&)> user_callback;

class Listener;

class Participant {
public:
    Participant(const std::string& name) :
        _inited(false), _name(name), _participant(nullptr),
        _meta_publisher(nullptr), _meta_subscriber(nullptr), _pub_listener(nullptr) {}

    ~Participant() {
        if (_participant) {
            Domain::removeParticipant(_participant);
        }
    }

    bool init(user_callback cb);
    bool init_py();
    void cache_msg(const std::string& msg);
    std::string read_msg();

    bool register_common_callback(user_callback cb) {
        _meta_callback = cb;
    }

    void send(const std::string& message) {
        if (_meta_publisher) {
            MetaMessage m;

            m.data(message);
            _meta_publisher->write((void*)&m);
        }
    }

    void income_message(const std::string topic, const MetaMessage *m) {
        std::lock_guard<std::mutex> lock(_internal_mutex);
        if (_meta_callback) {
            _meta_callback(m->data());
        }
    }

private:
    bool _inited;
    std::string _name;
    eprosima::fastrtps::Participant* _participant;
    std::deque<std::string> _unread_msg;
    std::mutex _msg_lock;
    std::condition_variable _msg_cond;

    // for ros edp.
    //std::map<std::string, user_callback> _meta_event_handler;
    std::string _meta_topic_name;
    user_callback _meta_callback;
    eprosima::fastrtps::Publisher * _meta_publisher;
    eprosima::fastrtps::Subscriber * _meta_subscriber;
    Listener* _meta_listener;
    eprosima::fastrtps::PublisherListener* _pub_listener;
    ::MetaMessagePubSubType _type;
    std::mutex _internal_mutex;
};

class Listener : public eprosima::fastrtps::SubscriberListener {
public:
    Listener(Participant *participant,
             const eprosima::fastrtps::rtps::GUID_t &guid) : _participant(participant),
                                        _local_publisher_guid(guid){}
    ~Listener(){}
    void onSubscriptionMatched(eprosima::fastrtps::Subscriber* /*sub*/,
                               eprosima::fastrtps::MatchingInfo& /*info*/) {} 
    void onNewDataMessage(eprosima::fastrtps::Subscriber* sub) {
        eprosima::fastrtps::SampleInfo_t m_info;
        eprosima::fastrtps::SubscriberAttributes attr = sub->getAttributes();
        MetaMessage m;

        if (sub->takeNextData((void*)&m, &m_info)) {
            if (m_info.sampleKind == eprosima::fastrtps::ALIVE) {
                // ignore local writer
                if (_local_publisher_guid == m_info.sample_identity.writer_guid()) {
                    //std::cout << "Ignore local meta msg." << std::endl;
                    return;
                }

                _participant->income_message(attr.topic.topicName, &m);
            }
        }
    }

private:
    Participant *_participant;
    eprosima::fastrtps::rtps::GUID_t _local_publisher_guid;
};

}

#endif

