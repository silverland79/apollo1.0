
#ifndef ROSCPP_PARAM_SERVER_H
#define ROSCPP_PARAM_SERVER_H

#include <stdint.h>
#include <string>
#include <vector>
#include <set>
#include <map>
#include <mutex>
#include <memory>

namespace ros {

class ParamServer;
typedef std::shared_ptr<ParamServer> ParamServerPtr;

struct param_info_t {
    XmlRpc::XmlRpcValue value;
    std::string caller_id;
    uint64_t timestamp;
};

struct registration_t {
    std::string caller_id;
    std::string caller_api;
    bool operator < (const registration_t &a) const {
        return caller_id != a.caller_id;
    }
};

class ROSCPP_DECL ParamServer {
public:
    ParamServer();
    ~ParamServer();

    static const ParamServerPtr& instance();

    void start();

    void delete_param_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void set_param_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void get_param_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void search_param_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void subscribe_param_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void unsubscribe_param_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void has_param_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void get_paramnames_callback(XmlRpc::XmlRpcValue &params, XmlRpc::XmlRpcValue &result);
    void param_update(const std::string &key, const XmlRpc::XmlRpcValue & value);
    void notify();

private:
    bool delete_key(const std::string &key);
    void set_key_value(const std::string &key, XmlRpc::XmlRpcValue &value,  const std::string &caller_id);

    std::mutex _internal_mutex;
    std::map<std::string, param_info_t> _parameters;
    std::map<std::string, std::set<registration_t> > _registrations;
    std::string _server_api;
    XMLRPCManagerPtr _xmlrpc_manager;
};

}
#endif 
