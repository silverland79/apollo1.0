#!/usr/bin/env python

import rospy
import bisect
import tf
import pyproj
import StringIO
import math
import tf2_ros
from std_msgs.msg import Header
from geometry_msgs.msg import Quaternion, Point, PoseStamped, TransformStamped, Vector3


ros_time_delay = 0
broadcast_advance_secs = 5
proj_param = '+proj=utm +zone=50 +ellps=WGS84'
broadcaster = tf2_ros.TransformBroadcaster()
hint_obtained = False

LEAP_SECONDS = ((1483228800, 18),
        (1435708800, 17),
        (1341100800, 16),
        (1230768000, 15),
        (1136073600, 14))

def unix_to_gps(unix_time):
    leap_seconds = 0
    for item in LEAP_SECONDS:
        if unix_time >= item[0]:
            leap_seconds = item[1]
            break
    print leap_seconds
    gps_time = unix_time - (315964800 - leap_seconds)
    return gps_time

def hint_callback(msg):
    global ros_time_delay
    global hint_obtained
    hint_obtained = True
    current_ros_time = rospy.Time.now().to_sec()
    current_ros_time_in_gps_format = unix_to_gps(current_ros_time)

    buff = StringIO.StringIO()
    msg.serialize(buff)
    header = Header()
    header.deserialize(buff.getvalue())
    # print header, ros_time_delay

    # TODO(libo24) should assert that msg.header.stamp is gps time
    ros_time_delay = header.stamp.to_sec() - current_ros_time_in_gps_format

def load_ieout(file_path):
    global proj_param

    file = open(file_path, 'r')
    
    hint_table_header = ['Week', 'GPSTime', 'Longitude', 'Latitude',
            'H-Ell', 'Heading', 'Pitch', 'Roll']
    hint_table_header_set = set(hint_table_header)
    
    while True:
        line = file.readline()
        words = line.split();
        if not line:
            print 'Cannot find table header!'
            quit()
        if hint_table_header_set.issubset(words):
            ieout_header = words;
            # Skip the unit line
            file.readline()
            break
    
    ieout_data = {name : [] for name in ieout_header}
    while True:
        line = file.readline()
        if not line:
            break
        words = line.split()
        for name, value in zip(ieout_header, words):
            ieout_data[name].append(value)
    
    stamps = [int(week) * 3600 * 24 * 7 + float(seconds) for week, seconds
            in zip(ieout_data['Week'], ieout_data['GPSTime'])]

    orientations = [tf.transformations.quaternion_from_euler(
        math.radians(float(roll)),
        math.radians(float(pitch)),
        -math.radians(float(yaw)), 'syxz')
            for roll, pitch, yaw
            in zip(ieout_data['Roll'], ieout_data['Pitch'],
                ieout_data['Heading'])]
    wgs84 = pyproj.Proj('+proj=latlong +ellps=WGS84')
    target_proj = pyproj.Proj(proj_param)
    latitudes = [float(lat) for lat in ieout_data['Latitude']]
    longitudes = [float(lon) for lon in ieout_data['Longitude']]
    xs, ys = pyproj.transform(wgs84, target_proj, longitudes, latitudes)

    positions = [[x, y, float(z)] for x, y, z
            in zip(xs, ys, ieout_data['H-Ell'])]
    return stamps, orientations, positions

def main():
    global proj_param
    global broadcaster
    rospy.init_node('ieout_broadcaster')
    proj_param = rospy.get_param('/proj4_text', '')
    ieout_path = rospy.get_param('~ieout', '')
    child_frame_id = rospy.get_param('~child_frame_id', 'novatel')

    stamps, orientations, positions = load_ieout(ieout_path)

    rospy.Subscriber('hint', rospy.msg.AnyMsg, hint_callback)

    rate = rospy.Rate(10)
    seq = 0
    stamps_length=len(stamps)
    while not rospy.is_shutdown():
        if not hint_obtained:
            rate.sleep()
            continue
        current_ros_time = rospy.Time.now().to_sec()
        current_gps_time = unix_to_gps(current_ros_time + ros_time_delay)
        broadcast_gps_time = current_gps_time + broadcast_advance_secs
        #print '%.2f %.2f, %.2f' % (current_ros_time, broadcast_gps_time, ros_time_delay)

        index = bisect.bisect(stamps, broadcast_gps_time)
        if(index>=stamps_length):
            rospy.logfatal('IEOUT file query failed! %f, %f'%(stamps[0], stamps[stamps_length-1]))
            break
        #print stamps[index], broadcast_gps_time
        
        transform_stamped = TransformStamped()
        transform_stamped.header = Header(0, rospy.Time(stamps[index]), 'world')
        transform_stamped.child_frame_id = child_frame_id
        transform_stamped.transform.rotation = Quaternion(*orientations[index])
        transform_stamped.transform.translation = Vector3(*positions[index])

        broadcaster.sendTransform(transform_stamped)
        
        rate.sleep()

if __name__ == '__main__':
    main()

# stamp = stamps[4];
# index = bisect.bisect(stamps, stamp)
# print index
# 
# print stamps
