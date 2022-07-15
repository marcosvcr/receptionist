#!/usr/bin/env python3

from pathlib import Path
import math
import struct
import socket
import sys
from numpy import load
import cv2
import depthai as dai
import numpy as np
import time
from modules import kalman_filter as kalman
from std_msgs.msg import String, Int16,Int16MultiArray
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from modules import actions as ac
import rospy as rp
import os



'''
Spatial detection network demo.
    Performs inference on RGB camera and retrieves spatial location coordinates: x,y,z relative to the center of depth map.
'''


def client(pessoa, x, y):

    HOST = '192.168.37.138'  # Endereco IP do Servidor
    PORT = 1234            # Porta que o Servidor esta
    udp = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    dest = (HOST, PORT)

    send = str(pessoa)+" "+ str(x)+" "+str(y)+"!"

    send = send.encode()

    udp.sendto (send, dest)

    #print('-> ', send)

    udp.close()

def viterbi(A, C, B, O):
    """Viterbi algorithm for solving the uncovering problem

    Notebook: C5/C5S3_Viterbi.ipynb

    Args:
        A: State transition probability matrix of dimension I x I
        C: Initial state distribution  of dimension I
        B: Output probability matrix of dimension I x K
        O: Observation sequence of length N

    Returns:
        S_opt: Optimal state sequence of length N
        D: Accumulated probability matrix
        E: Backtracking matrix
    """
    I = A.shape[0]    # Number of states
    N = len(O)  # Length of observation sequence

    # Initialize D and E matrices
    D = np.zeros((I, N))
    E = np.zeros((I, N-1)).astype(np.int32)
    D[:, 0] = np.multiply(C, B[:, 0])

    # Compute D and E in a nested loop
    for n in range(1, N):
        for i in range(I):
            temp_product = np.multiply(A[:, i], D[:, n-1])
            D[i, n] = np.max(temp_product) * B[i, O[n]]
            E[i, n-1] = np.argmax(temp_product)

    # Backtracking
    S_opt = np.zeros(N).astype(np.int32)
    S_opt[-1] = np.argmax(D[:, -1])
    for n in range(N-2, 0, -1):
        S_opt[n] = E[int(S_opt[n+1]), n]

    return S_opt, D, E


def zones(x,y,z):
    if(z <= 0):
        return 0
    if(z>= 600 and z <= 1400):
        return 3
    elif(z>=1400 and z<=2200):
        return 2

    elif(z>=2200 and z<=2800):
            return 1
    elif(z>=2800):
       return 0
    else:
        return 0

class Oak_D:
    def __init__(self):
        # Get argument first
        self.nnBlobPath = str((Path(__file__).parent / Path('modules/model/mobilenet-ssd_openvino_2021.4_6shave.blob')).resolve().absolute())
        self.loadModel = load(os.getcwd()+'/src/oak/src/modelScenariosZones.npy', allow_pickle=True)
        self.syncNN = True
        # Create pipeline
        self.pipeline = dai.Pipeline()
        self.bridge = CvBridge()
        self.repeat = 0
        self.followEye  = 0

        # MobilenetSSD label texts
        self.labelMap = ["background", "aeroplane", "bicycle", "bird", "boat", "bottle", "bus", "car", "cat", "chair", "cow",
                "diningtable", "dog", "horse", "motorbike", "person", "pottedplant", "sheep", "sofa", "train", "tvmonitor"]

        self.kalman = kalman.KalmanFilter()
        #Center and z point predict
        self.center_point = None
        self.distance_point = None
        self.frame = None
        self.currentZone = 0
        self.sequence_states = []

        #ROS
        rp.init_node('oak', anonymous=True)

        self.pub_frame = rp.Publisher('oak/frame', Image, queue_size=1)
        self.pub_xy = rp.Publisher('oak/xy', String, queue_size=10)
        self.pub_xy_log = rp.Publisher('/log', String, queue_size=1)  
        self.pub_z = rp.Publisher('oak/z', String, queue_size=10)
        self.startFaceRecognition = rp.Publisher("/oak/start_audio_capture", Int16,queue_size = 10)
        self.startDialogue_log = rp.Publisher('/log', String, queue_size=1)
        self.isInteraction = 0

        self.rate = rp.Rate(1)

    def _publisher(self):
        center_point = self.center_point
        distance_point = self.distance_point
        frame = self.frame
        #print('TYPE: ',type(self.frame))
        self.pub_frame.publish(self.frame)
        self.pub_xy.publish(str(center_point))
        #self.pub_xy_log.publish("oak, Distance")
        self.pub_z.publish(str(distance_point))


    def _pipeline(self):        

        nnBlobPath = self.nnBlobPath
        syncNN = self.syncNN
        # Create pipeline
        pipeline = self.pipeline

        # Create pipeline
        pipeline = dai.Pipeline()

        # Define sources and outputs
        camRgb = pipeline.create(dai.node.ColorCamera)
        spatialDetectionNetwork = pipeline.create(dai.node.MobileNetSpatialDetectionNetwork)
        monoLeft = pipeline.create(dai.node.MonoCamera)
        monoRight = pipeline.create(dai.node.MonoCamera)
        stereo = pipeline.create(dai.node.StereoDepth)
        #AQUI
        stereo.setDepthAlign(dai.CameraBoardSocket.RGB)

        xoutRgb = pipeline.create(dai.node.XLinkOut)
        xoutNN = pipeline.create(dai.node.XLinkOut)
        xoutBoundingBoxDepthMapping = pipeline.create(dai.node.XLinkOut)
        xoutDepth = pipeline.create(dai.node.XLinkOut)

        xoutRgb.setStreamName("rgb")
        xoutNN.setStreamName("detections")
        xoutBoundingBoxDepthMapping.setStreamName("boundingBoxDepthMapping")
        xoutDepth.setStreamName("depth")

        # Properties
        camRgb.setPreviewSize(300, 300)
        camRgb.setResolution(dai.ColorCameraProperties.SensorResolution.THE_1080_P)
        camRgb.setInterleaved(False)
        camRgb.setColorOrder(dai.ColorCameraProperties.ColorOrder.BGR)

        monoLeft.setResolution(dai.MonoCameraProperties.SensorResolution.THE_400_P)
        monoLeft.setBoardSocket(dai.CameraBoardSocket.LEFT)
        monoRight.setResolution(dai.MonoCameraProperties.SensorResolution.THE_400_P)
        monoRight.setBoardSocket(dai.CameraBoardSocket.RIGHT)

        # Setting node configs
        stereo.initialConfig.setConfidenceThreshold(255)

        spatialDetectionNetwork.setBlobPath(nnBlobPath)
        spatialDetectionNetwork.setConfidenceThreshold(0.5)
        spatialDetectionNetwork.input.setBlocking(False)
        spatialDetectionNetwork.setBoundingBoxScaleFactor(0.5)
        spatialDetectionNetwork.setDepthLowerThreshold(100)
        spatialDetectionNetwork.setDepthUpperThreshold(5000)

        # Linking
        monoLeft.out.link(stereo.left)
        monoRight.out.link(stereo.right)

        camRgb.preview.link(spatialDetectionNetwork.input)
        if syncNN:
            spatialDetectionNetwork.passthrough.link(xoutRgb.input)
        else:
            camRgb.preview.link(xoutRgb.input)

        spatialDetectionNetwork.out.link(xoutNN.input)
        spatialDetectionNetwork.boundingBoxMapping.link(xoutBoundingBoxDepthMapping.input)

        stereo.depth.link(spatialDetectionNetwork.inputDepth)
        spatialDetectionNetwork.passthroughDepth.link(xoutDepth.input)

        return pipeline

    def _box(self, detection, frame):
        kalman = self.kalman
        #self.frame = frame

        height = frame.shape[0]
        width  = frame.shape[1]
        aspect_ratio = width/height

            # Denormalize bounding box
        x1 = int(detection.xmin * width)   
        x2 = int(detection.xmax * width)
        y1 = int(detection.ymin * height)
        y2 = int(detection.ymax * height)
        x_center = int((x1+x2)/2)
        y_center = int((y1+y2)/2)

        xy_measurement = (x_center,y_center, aspect_ratio, height)
        xz_measurement = (x_center,detection.spatialCoordinates.z, aspect_ratio, height)

        if self.center_point:
            xy_mean_predict, xy_covariance_predict = kalman.predict(kalman.xy_mean, kalman.xy_covariance)
            xz_mean_predict, xz_covariance_predict = kalman.predict(kalman.xz_mean, kalman.xz_covariance)

            xy_mean_kalman, xy_covariance_kalman = kalman.update(xy_mean_predict, xy_covariance_predict, xy_measurement)
            xz_mean_kalman, xz_covariance_kalman = kalman.update(xz_mean_predict, xz_covariance_predict, xz_measurement)

            kalman.xy_mean = xy_mean_kalman
            kalman.xz_mean = xz_mean_kalman

            xy_covariance = xy_covariance_kalman
            xz_covariance = xz_covariance_kalman
        else:
            kalman.xy_mean, kalman.xy_covariance = kalman.initiate(xy_measurement)
            kalman.xz_mean, kalman.xz_covariance = kalman.initiate(xz_measurement)

        x_kalman =int(kalman.xy_mean[0])
        y_kalman =int(kalman.xy_mean[1])

        self.center_point = [x_kalman, y_kalman]
        self.distance_point = int(kalman.xz_mean[1])
        
        try:
            label = labelMap[detection.label]
        except:
            label = detection.label

        cv2.putText(frame, "{:.2f}% Reability".format(detection.confidence*100), (x1 + 10, y1 + 20), cv2.FONT_HERSHEY_TRIPLEX, 0.5, 255)
        cv2.putText(frame, f"X: {int(detection.spatialCoordinates.x)} mm", (x1 + 10, y1 + 35), cv2.FONT_HERSHEY_TRIPLEX, 0.5, 255)
        cv2.putText(frame, f"Y: {int(detection.spatialCoordinates.y)} mm", (x1 + 10, y1 + 50), cv2.FONT_HERSHEY_TRIPLEX, 0.5, 255)
        cv2.putText(frame, f"Z: {int(detection.spatialCoordinates.z)} mm", (x1 + 10, y1 + 65), cv2.FONT_HERSHEY_TRIPLEX, 0.5, 255)

        cv2.rectangle(frame, (x1, y1), (x2, y2), (255, 0, 0), cv2.FONT_HERSHEY_SIMPLEX)
        
        return frame       


    def start_pipeline(self):        

        pipeline = self._pipeline()
        frame_local = None
        A = np.array(self.loadModel[4])

        C = np.array(self.loadModel[2])
    
        B = np.array(self.loadModel[3])


        # Connect to device and start pipeline
        with dai.Device(pipeline) as device:

            thereisHuman = "NOFACE"
            # Output queues will be used to get the rgb frames and nn data from the outputs defined above
            previewQueue = device.getOutputQueue(name="rgb", maxSize=4, blocking=False)
            detectionNNQueue = device.getOutputQueue(name="detections", maxSize=4, blocking=False)
            xoutBoundingBoxDepthMapping = device.getOutputQueue(name="boundingBoxDepthMapping", maxSize=4, blocking=False)
            depthQueue = device.getOutputQueue(name="depth", maxSize=4, blocking=False)

            startTime = time.monotonic()
            timeToEvaluate = time.time()*1000
            counter = 0
            fps = 0
            HOST = '127.0.0.1'     # Endereco IP do Servidor
            PORT = 5000            # Porta que o Servidor esta
            tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            dest = (HOST, PORT)
            tcp.connect(dest)
            unpacker = struct.Struct('I')

            while True:
                inPreview = previewQueue.get()
                inDet = detectionNNQueue.get()
                depth = depthQueue.get()

                counter+=1
                current_time = time.monotonic()
                if (current_time - startTime) > 1 :
                    fps = counter / (current_time - startTime)
                    counter = 0
                    startTime = current_time

                frame_local = inPreview.getCvFrame()
                self.frame = self.bridge.cv2_to_imgmsg(frame_local, encoding="passthrough")

                thereisHuman = "NOFACE"

                detections = inDet.detections
               
                # If the frame is available, draw bounding boxes on it and show the frame
                for detection in detections:

                    if detection.label==15:
                        thereisHuman = "FACE"
                        frame_local = self._box(detection, frame_local)
                        #print("toaqui")
                        #print((time.time()*1000 -timeToEvaluate))
                        if self.followEye == 1:
                            client(thereisHuman, 300 - self.center_point[0],self.center_point[1])
                        if((time.time()*1000 -timeToEvaluate) >= 1000.0):
                            print("e aqui")
                            zone = zones(self.center_point[0],self.center_point[1],self.distance_point)
                            print(zone)
                            if zone is not None:
                                self.currentZone = zone
                            self.sequence_states.append(self.currentZone)
                            result = viterbi(A,C,B, self.sequence_states)
                            print("Distance", self.distance_point)
                            print("Zone: ", self.sequence_states)
                            print("Action: ",result[0])
                            current = result[0][-1]
                            print(current)
                            if(self.currentZone == 3):
                                #DANGER ZONE
                                print("danger zone")
                                self.startFaceRecognition.publish(1)
                                self.startDialogue_log.publish("oak, Flag to start capture")
                                self.isInteraction = 1
                                tcp.send(str(1).encode('utf8'))
                                data = tcp.recv(unpacker.size)
                                print('data: ', data)
                                unpacked_data = unpacker.unpack(data)
                                print(unpacked_data)
                                self.followEye = unpacked_data[0]
                            else:

                                if self.isInteraction == 0:
                                    if self.repeat == 4:
                                        if current == 1:
                                            tcp.send(str(1).encode('utf8'))
                                            data = tcp.recv(unpacker.size)
                                            unpacked_data = unpacker.unpack(data)
                                            self.followEye = unpacked_data[0]
                                        elif current == 2:
                                            tcp.send(str(2).encode('utf8'))
                                            data = tcp.recv(unpacker.size)
                                            unpacked_data = unpacker.unpack(data)
                                            self.followEye = unpacked_data[0]

                                        elif current == 0:
                                            tcp.send(str(0).encode('utf8'))
                                            data = tcp.recv(unpacker.size)
                                            unpacked_data = unpacker.unpack(data)
                                            print(unpacked_data)
                                            self.followEye = unpacked_data[0]
                                        self.repeat = 0    

                                    else:
                                        self.repeat += 1

                            timeToEvaluate = time.time()*1000

                if thereisHuman ==  "NOFACE":
                    self.startFaceRecognition.publish(0)
                    #self.startDialogue_log.publish("oak, Flag to Finish the capture")

                    self.isInteraction = 0
                    print("human: ", thereisHuman)
                    if((time.time()*1000 -timeToEvaluate) >= 3000.0):
                        tcp.send(str(0).encode('utf8'))
                        data = tcp.recv(unpacker.size)
                        unpacked_data = unpacker.unpack(data)
                        self.followEye = unpacked_data[0]
                        self.sequence_states.clear()

                cv2.imshow("preview", frame_local)

                self._publisher()

                if cv2.waitKey(1) == ord('q'):
                    break

def main():
    oak = Oak_D()
    oak.start_pipeline()

if __name__ == "__main__":
    main()