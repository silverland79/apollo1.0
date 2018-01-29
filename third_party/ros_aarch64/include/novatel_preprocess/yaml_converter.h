/************************************************************************
 *
 * Copyright (c) 2016 Baidu.com, Inc. All Rights Reserved
 *
 ************************************************************************/
/**
 * @file yaml_converter.h
 * @author car-os
 * @date 2016/03/8
 *
 **/

#ifndef NOVATEL_PREPROCESS_YAML_CONVERTER_H
#define NOVATEL_PREPROCESS_YAML_CONVERTER_H
#include <yaml-cpp/yaml.h>

namespace yaml {
#ifdef GEOMETRY_MSGS_MESSAGE_TRANSFORM_H
template<>
struct convert<geometry_msgs::Transform>
{
    static Node encode(const geometry_msgs::Transform& rhs)
    {
        Node node;
        node["translation"]["x"] = rhs.translation.x;
        node["translation"]["y"] = rhs.translation.y;
        node["translation"]["z"] = rhs.translation.z;
        node["rotation"]["x"] = rhs.rotation.x;
        node["rotation"]["y"] = rhs.rotation.y;
        node["rotation"]["z"] = rhs.rotation.z;
        node["rotation"]["w"] = rhs.rotation.w;
        return node;
    }
    static bool decode(const Node& node, geometry_msgs::Transform& lhs)
    {
        lhs.translation.x = node["translation"]["x"].as<double>();
        lhs.translation.y = node["translation"]["y"].as<double>();
        lhs.translation.z = node["translation"]["z"].as<double>();
        lhs.rotation.x = node["rotation"]["x"].as<double>();
        lhs.rotation.y = node["rotation"]["y"].as<double>();
        lhs.rotation.z = node["rotation"]["z"].as<double>();
        lhs.rotation.w = node["rotation"]["w"].as<double>();
        return true;
    }
};
#endif // GEOMETRY_MSGS_MESSAGE_TRANSFORM_H

#ifdef STD_MSGS_MESSAGE_HEADER_H
#ifndef YAML_CONVERTER_STD_MSGS_HEADER
#define YAML_CONVERTER_STD_MSGS_HEADER
template<>
struct convert<std_msgs::Header>
{
    static Node encode(const std_msgs::Header& rhs)
    {
        Node node;
        node["seq"] = rhs.seq;
        node["stamp"]["secs"] = static_cast<unsigned long long>(
                rhs.stamp.toNSec()) / 1000000000;
        node["stamp"]["nsecs"] = static_cast<unsigned long long>(
                rhs.stamp.toNSec()) % 1000000000;
        node["frame_id"] = rhs.frame_id;
        return node;
    }
    static bool decode(const Node& node, std_msgs::Header& lhs)
    {
        lhs.seq = node["seq"].as<unsigned int>();
        unsigned int secs = node["stamp"]["secs"].as<unsigned int>();
        unsigned int nsecs = node["stamp"]["nsecs"].as<unsigned int>();
        lhs.stamp = ros::Time(secs, nsecs);
        lhs.frame_id = node["frame_id"].as<std::string>();
        return true;
    }
};
#endif // YAML_CONVERTER_STD_MSGS_HEADER
#endif // STD_MSGS_MESSAGE_HEADER_H

#ifdef GEOMETRY_MSGS_MESSAGE_TRANSFORMSTAMPED_H
template<>
struct convert<geometry_msgs::TransformStamped>
{
    static Node encode(const geometry_msgs::TransformStamped& rhs)
    {
        Node node;
        node["header"] = rhs.header;
        node["transform"] = rhs.transform;
        node["child_frame_id"] = rhs.child_frame_id;
        return node;
    }
    static bool decode(const Node& node, geometry_msgs::TransformStamped& lhs)
    {
        lhs.transform = node["transform"].as<geometry_msgs::Transform>();
        lhs.header = node["header"].as<std_msgs::Header>();
        lhs.child_frame_id = node["child_frame_id"].as<std::string>();
        return true;
    }
};
#endif // GEOMETRY_MSGS_MESSAGE_TRANSFORMSTAMPED_H

template<>
template<typename Scalar>
struct convert<Eigen::Transform<Scalar, 3, Eigen::Affine> > {
    typedef Eigen::Transform<Scalar, 3, Eigen::Affine> Affine3x;
    typedef Eigen::Matrix<Scalar, 3, 1> Vector3x;
    typedef Eigen::Quaternion<Scalar> Quaternionx;
    typedef Eigen::Translation<Scalar, 3> Translation3x;
    static Node encode(const Affine3x& rhs) {
        Quaternionx quat(rhs.rotation());
        Vector3x vec(rhs.translation());
        Node node;
        node["orientation"]["x"] = quat.x();
        node["orientation"]["y"] = quat.y();
        node["orientation"]["z"] = quat.z();
        node["orientation"]["w"] = quat.w();
        node["position"]["x"] = vec.x();
        node["position"]["y"] = vec.y();
        node["position"]["z"] = vec.z();
        return node;
    }
    static bool decode(const Node& node, Affine3x& affine) {
        const Node& orientation_node = node["orientation"];
        const Node& position_node = node["position"];
        Quaternionx quaternion(orientation_node["w"].as<Scalar>(),
                orientation_node["x"].as<Scalar>(),
                orientation_node["y"].as<Scalar>(),
                orientation_node["z"].as<Scalar>());
        Vector3x vector(position_node["x"].as<Scalar>(),
                position_node["y"].as<Scalar>(),
                position_node["z"].as<Scalar>());
        affine = Translation3x(vector) * quaternion;
        return true;
    }

};

}
#endif // IDL_CAR_NOVATEL_YAML_CONVERTER_H_
