#!/usr/bin/env python
import yaml
import sys
import os

f = open(sys.argv[1])
transform_stamped = yaml.safe_load(f)
command = 'rosrun tf2_ros static_transform_publisher '\
        '%f %f %f %f %f %f %f %s %s' % (transform_stamped['transform']['translation']['x'],\
        transform_stamped['transform']['translation']['y'],\
        transform_stamped['transform']['translation']['z'],\
        transform_stamped['transform']['rotation']['x'],\
        transform_stamped['transform']['rotation']['y'],\
        transform_stamped['transform']['rotation']['z'],\
        transform_stamped['transform']['rotation']['w'],\
        transform_stamped['header']['frame_id'],\
        transform_stamped['child_frame_id'])

print command
ret = os.system(command)
print ret
