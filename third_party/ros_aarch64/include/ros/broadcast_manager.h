#ifndef ROSCPP_BROADCAST_MANAGER_H
#define ROSCPP_BROADCAST_MANAGER_H

#include <condition_variable>
#include <functional>
#include <future>
#include <queue>
#include <memory>
#include <mutex>
#include <stdexcept>
#include <string>
#include <set>
#include <thread>
#include <vector>
#include <chrono>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <time.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "common.h"

#include "XmlRpc.h"
#include "ros/time.h"
#include "ros/master.h"
#include "ros/topic_manager.h"
#include "ros/xmlrpc_manager.h"
#include "discovery/participant.h"


#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using namespace boost::property_tree;

#define REGISTRY(name, method) \
    _functions[#name] = CallbackFunc([this] (const MsgInfo& result) \
            {this->method##_callback(result);});

namespace ros {
class BroadcastManager;
struct SyncLock;

typedef ptree MsgInfo;
typedef std::set<std::string> PubInfo;
typedef std::shared_ptr<SyncLock> SyncLockPtr;
typedef std::function<void (const MsgInfo&)> CallbackFunc;
typedef std::shared_ptr<BroadcastManager> BroadcastManagerPtr;

static const int MSGBUFSIZE = 1024;

struct TopicInfo {
    std::string type;
    std::string uri;
};

struct ServiceInfo {
    std::string uri;
    bool is_owner;
};

struct ParamInfo {
    std::string value;
    bool is_owner;
    uint64_t timestamp;
};

struct SyncLock {
    std::condition_variable cond;
    std::mutex lock;
    bool finish;
};

struct Sock {
    int fd;
    int cnt;
    int port_;
    int nbytes;
    int addrlen;
    std::string br_hosts_;
    struct ip_mreq mreq;
    struct sockaddr_in addr;
};

class ROSCPP_DECL BroadcastManager {

public:

    BroadcastManager();
    ~BroadcastManager();
    static const BroadcastManagerPtr& instance();

    void start();
    void shutdown();
    void register_publisher(const std::string& topic, const std::string& datatype, const std::string& uri);
    void updatePub();
    void register_subscriber(const std::string& topic, const std::string& type, const std::string& uri);
    void register_service(const std::string& node_name, const std::string& srv_name,
            const std::string& uri_buf, const std::string& uri);
    void unregister_publisher( const std::string& pub_name, const std::string& uri);
    void unregister_subscriber( const std::string& sub_name, const std::string& uri);
    void unregister_service( const std::string& service, const std::string& uri);
    bool lookup_service(const std::string& srv_name, std::string& serv_uri, int timeout = 2000);
	/*
    void set_param(const std::string& key, const std::string& value, bool local = false);
    bool get_param(const std::string& key, std::string& value, bool async = true, int timeout = 200);
    bool search_param(const std::string& key, std::string& path);
    void delete_param(const std::string& key);
    void request_params();
	*/
    void get_topics(master::V_TopicInfo& topics);
    void get_topic_types(master::V_TopicInfo& topics);
    void get_nodes(V_string& nodes);
    void common_callback(const std::string& result);
    void register_node();
private:

    //callbacks for broadcast msg
    void register_subscriber_callback(const MsgInfo& result);
    void register_publisher_callback(const MsgInfo& result);
    void unregister_publisher_callback(const MsgInfo& result);
    void unregister_subscriber_callback(const MsgInfo& result) {(void)result;};
    void register_service_callback(const MsgInfo& result);
    void unregister_service_callback(const MsgInfo& result);
	/*
    void set_param_callback(const MsgInfo& result);
    void get_param_callback(const MsgInfo& result);
    void delete_param_callback(const MsgInfo& result);
    void search_param_callback(const MsgInfo& result);
    void has_param_callback(const MsgInfo& result);
    void request_params_callback(const MsgInfo& result);
	*/
    //void request_topics_callback(const MsgInfo& result);
    //void request_services_callback(const MsgInfo& result);
    //void get_system_stat_callback(const MsgInfo& result);
    //void lookup_node_callback(const MsgInfo& result);
    //void lookup_service_callback(const MsgInfo &result);
    //void get_topic_types_callback(const MsgInfo& result);
    void _register_node_callback(const MsgInfo& result);
    void none_callback(const MsgInfo& result) {
        (void)result;
    };

	/*
    void _set_param(const std::string& key, const std::string& value, const std::string& timestamp);
    void _set_param(const std::string& key, const std::string& value, const uint64_t& timestamp);
	*/

    void _publisher_update(const std::string& topic_name);
    void _service_update(const std::string& name, const std::string& uri);
    void _unregister_service(const std::string& srv_name, const std::string& uri);
    void _unregister_publisher(const std::string& pub_name, const std::string& uri);
    void _register_node();

    MsgInfo _gen_msg(const std::string& request_type);
    MsgInfo _gen_msg(const std::string& request_type, uint64_t timestamp);
	/*
    bool _parse_message(const std::string& msg, std::vector<std::string>& result);
    bool _wait_for_param(const std::string& key, int timeout);
	*/
    void _send_msg(const MsgInfo& msg);
    void _send_msg(const std::string& msg);

    bool _shutting_down;

    ros::WallDuration master_retry_timeout_;

    std::queue< std::function<void()> > tasks;

    // synchronization
    std::mutex queue_mutex;
    std::condition_variable condition;

    void init_callbacks();

    bool _is_shutting_down() {
        return _shutting_down;
    }

    XMLRPCManagerPtr _xmlrpc_manager;
    TopicManagerPtr _topic_manager;
    std::map<std::string, PubInfo> _pub_cache;
    std::map<std::string, ParamInfo> _param_cache;
    std::map<std::string, ServiceInfo> _service_cache;
    std::map<std::string, TopicInfo> _advertised_topics;
    master::V_TopicInfo _topic_cache;
    std::mutex _param_lock;
    std::map<std::string, SyncLockPtr> _param_sync;
    std::map<std::string, CallbackFunc> _functions;


    //advertised topics
    //std::set<std::string> _advertised_topics;
    //published topics
    //std::map<std::string, TopicInfo> _advertised_topics;
    // master::V_TopicInfo _topic_cache;

    Sock _send;
    Sock _recv;
    char msgbuf[MSGBUFSIZE];
    std::unique_ptr<Participant> _part;
    uint64_t _node_timestamp;

	const std::string NODE_NAME = "node_name";
    const std::string TIMESTAMP = "timestamp";
    const std::string XMLRPC_URI = "xmlrpc_uri";
    const std::string REQUEST_TYPE = "request_type";

    const std::string NODE_TIME = "node_time";

    const std::string TOPIC_NAME = "topic_name";
    const std::string TOPIC_TYPE = "topic_type";
    const std::string TOPIC_URI = "topic_uri";

    const std::string SERVICE_NAME = "service_name";
    const std::string SERVICE_TYPE = "service_type";
    const std::string SERVICE_URI = "service_uri";
};

} // namespace ros

#endif
