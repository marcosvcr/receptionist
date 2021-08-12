#!/usr/bin/env python
import numpy as np
import os
import cv2
import roslib
import rospy
from sensor_msgs.msg import Image
from std_msgs.msg import Int16
from cv_bridge import CvBridge, CvBridgeError
from std_srvs.srv import Trigger, TriggerResponse
import io
import zlib
import numpy as np

PKG = 'recep'



roslib.load_manifest(PKG)

script_dir = os.path.dirname(__file__)
rel_path_proto = "model/deploy.prototxt.txt"
rel_path_model = "model/res10_300x300_ssd_iter_140000.caffemodel"
abs_path_model = os.path.join(script_dir, rel_path_model)
abs_path_proto = os.path.join(script_dir,rel_path_proto)



class face_detection:


    def __init__(self):
        print("init path")
        self.target = None
        self.bridge = CvBridge()
        self.pub = rospy.Publisher("/std_msgs/faces",Int16,queue_size = 10)
        self.sub = rospy.Subscriber("/sensor_msg/camera_image", Image, self.callback, queue_size = 1)
        self.recognition = rospy.Service("/example_server", Trigger, self.trigger_response) 
        self.net = cv2.dnn.readNetFromCaffe(abs_path_proto, abs_path_model)
        self.result = None




    def trigger_response(self, request):
        return TriggerResponse(
        success=True,
        message="aiii gui"
        )

    def compress_nparr(self,nparr):
        """
        Returns the given numpy array as compressed bytestring,
        the uncompressed and the compressed byte size.
        """
        bytestream = io.BytesIO()
        np.save(bytestream, nparr)
        uncompressed = bytestream.getvalue()
        compressed = zlib.compress(uncompressed)
        return compressed, len(uncompressed), len(compressed)

    def uncompress_nparr(self,bytestring):
        """
        """
        return np.load(io.BytesIO(zlib.decompress(bytestring)))



    def callback(self,data):
        print("callbaack path")
        try:
            self.target = self.bridge.imgmsg_to_cv2(data, "passthrough")
        except CvBridgeError as e:
            print(e)

        width  = self.target.shape[1] # float
        height = self.target.shape[0] # float
        blob = cv2.dnn.blobFromImage(cv2.resize(self.target, (300, 300)), 1.0,
            (300, 300), (104.0, 177.0, 123.0))
        print("[INFO] computing object detections...")
        self.net.setInput(blob)
        detections = self.net.forward()
        self.result = 0
        for i in range(0, detections.shape[2]):
            confidence = detections[0,0,i,2]
            if confidence > 0.8:
                box = detections[0, 0, i, 3:7] * np.array([width, height, width, height])
                (startX, startY, endX, endY) = box.astype("int")
                self.result+=1


        #print(detections)
        print("Resultado: {}".format(self.result))
        #self.result, _, _ = self.compress_nparr(detections)

        #msg = ByteMultiArray()
        #msg.header.stamp = rospy.Time.now()
        #msg.data = self.result
        self.pub.publish(self.result)








def main():
    print("main path")
    detect = face_detection()
    rospy.init_node('face_detection', anonymous = True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")


if __name__ == '__main__':
    main()







