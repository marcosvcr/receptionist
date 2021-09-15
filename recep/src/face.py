#!/usr/bin/env python
import numpy as np
import os
import cv2
import roslib
import rospy
import rosservice
import face_recognition
from sklearn import svm
from sensor_msgs.msg import Image
from std_msgs.msg import Int16, String
from cv_bridge import CvBridge, CvBridgeError
from std_srvs.srv import Trigger, TriggerResponse, TriggerRequest
import io
import zlib
import numpy as np

PKG = 'recep'



roslib.load_manifest(PKG)

script_dir = os.path.dirname(__file__)
rel_path_proto = "model/deploy.prototxt.txt"
rel_path_dataset = "dataset"
rel_path_model = "model/res10_300x300_ssd_iter_140000.caffemodel"
abs_path_model = os.path.join(script_dir, rel_path_model)
abs_path_proto = os.path.join(script_dir,rel_path_proto)
abs_path_dataset = os.path.join(script_dir, rel_path_dataset)

class Recognition:

    def __init__(self):

        self.train_dir = os.listdir(abs_path_dataset)
        self.encodings = []
        self.names = []
        self.classifier = None

    def train(self):

        for person in self.train_dir:
            pix = os.listdir(abs_path_dataset + "/" +person)

            for person_img in pix:

                face = face_recognition.load_image_file(abs_path_dataset + "/" + person +"/" + person_img)
                face_bounding_boxes = face_recognition.face_locations(face)

                if len(face_bounding_boxes) == 1:

                    face_enc = face_recognition.face_encodings(face)[0]

                    self.encodings.append(face_enc)
                    self.names.append(person)

                else:
                    print(person + "/" + person_img + " was skipped and can't be used from training")

        self.classifier = svm.SVC(gamma ='scale')
        self.classifier.fit(self.encodings, self.names)


    def predict(self, img):

        result = []
        face_locations = face_recognition.face_locations(img)
        no = len(face_locations)
        print("Number of faces detected: ", no)
        for i in range(no):
            test_image_enc = face_recognition.face_encodings(img)[i]
            name = self.classifier.predict([test_image_enc])
            result.append(*name)

        print(result)
        return result

    def getPaths(self):
        print(abs_path_dataset)

class face_detection:


    def __init__(self):
        print("init path")
        self.rec = Recognition()
        self.crop_img = None
        self.target = None
        self.bridge = CvBridge()
        self.names = rospy.Publisher("/std_msgs/people", String, queue_size=1)
        self.pub = rospy.Publisher("/std_msgs/faces",Int16,queue_size = 10)
        self.sub = rospy.Subscriber("/sensor_msg/camera_image", Image, self.callback, queue_size = 1)
        self.recognition = rospy.Service("/example_server", Trigger, self.trigger_response) 
        self.net = cv2.dnn.readNetFromCaffe(abs_path_proto, abs_path_model)
        self.result = None




    def trigger_response(self, request):
        namesPeople=None
        pred_crop = self.rec.predict(self.crop_img)
        if len(pred_crop) == 0:
            namesPeople = "unknown"
        else:
            namesPeople = pred_crop[0]

        return TriggerResponse(
        success=True,
        message=namesPeople
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
        people = ""
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
                self.crop_img  = self.target[startY:endY,startX:endX]
                rospy.wait_for_service("/example_server")
                recog_service = rospy.ServiceProxy("/example_server", Trigger)
                recog = TriggerRequest()
                recog_result = recog_service(recog)
                print(recog_result)
                people  = people + recog_result.message + " "
                self.result+=1


        #print(detections)
        print("Resultado: {}".format(self.result))

        os.system('clear')
        #self.result, _, _ = self.compress_nparr(detections)

        #msg = ByteMultiArray()
        #msg.header.stamp = rospy.Time.now()
        #msg.data = self.result
        self.pub.publish(self.result)
        self.names.publish(people)








def main():
    print("main path")
    detect = face_detection()
    detect.rec.train()
    rospy.init_node('face_detection', anonymous = True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")


if __name__ == '__main__':
    main()
