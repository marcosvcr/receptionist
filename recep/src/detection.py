#!/usr/bin/env python3

import numpy as np
import os
import cv2
import roslib
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError 

PKG = 'recep'

roslib.load_manifest(PKG)

script_dir = os.path.dirname(__file__)
rel_path_proto = "model/deploy.prototxt.txt"
rel_path_model = "model/res10_300x300_ssd_iter_140000.caffemodel"
abs_path_model = os.path.join(script_dir, rel_path_model)
abs_path_proto = os.path.join(script_dir,rel_path_proto)

if __name__ == '__main__':

    print(cv2.__version__)

    image_pub = rospy.Publisher("/sensor_msg/camera_image", Image, queue_size=1)
    cap = cv2.VideoCapture(0)
    bridge = CvBridge()
    rospy.init_node('Camera', anonymous = True)
    while not rospy.is_shutdown():
        (grabbed,frame) = cap.read()
        if not grabbed:
            break

        _, img_encoded = cv2.imencode('.jpg', frame)

        innerMsg = img_encoded.tostring()
        msg = bridge.cv2_to_imgmsg(frame, encoding="passthrough")
        image_pub.publish(msg)
        
    cap.release()
