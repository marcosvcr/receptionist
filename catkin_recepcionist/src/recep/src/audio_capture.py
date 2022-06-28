#!/usr/bin/env python3
from modules import mic
import roslib
import rospy as rp
from std_msgs.msg import String, Int16
import time
import csv
import pandas as pd

class Microphone:
    def __init__(self):
        self.mic = mic.Mic()

        df = pd.DataFrame(columns=['Transcripted', 'Transcription time(s)', 'Date'])
        df.to_csv('df_data.csv', index=False)
        self.df = df

        rp.init_node('Audio_capture', anonymous = True)
        self.pub = rp.Publisher('/recep/mic_transcript',String ,queue_size=1)
        self.rate = rp.Rate(10)

    def start_mic(self):
        microphone_activation()
        while not rp.is_shutdown():
            while active_mic==1:
                start_time = time.strftime("%a, %d %b %Y %H:%M:%S")
                print("Habilitado para fala......")
                #speech=input(str('-> '))

                speech,time_process = self.mic.listen()
                if isinstance(speech, int)==False:
                    self.pub.publish(speech)

                print('Pergunta: {}   Time: {}   Data: {}'.format(speech, time_process, start_time))

                self.df=pd.DataFrame([[speech, time_process,start_time]])

                self.df.to_csv('df_data.csv', index=False, mode='a', header=False)


            self.rate.sleep()

active_mic = 0
def callback(data): 
    global active_mic
    active_mic = data.data

def microphone_activation():
    rp.Subscriber("/oak/start_audio_capture", Int16, callback, queue_size = 1)
   
if __name__ == "__main__":
    mic = Microphone()
    mic.start_mic()