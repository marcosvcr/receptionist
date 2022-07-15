#!/usr/bin/env python3
from modules import mic
import roslib
import rospy as rp
from std_msgs.msg import String, Int16
import time
import csv
import pandas as pd
from modules import communication

class Microphone:
    def __init__(self):
        self.save = True
        self.first_attempt = 0
        self.avatar = communication.Avatar()
        self.mic = mic.Mic()

        if self.save:
            df = pd.DataFrame(columns=['Transcripted', 'Transcription time(s)', 'Date'])
            df.to_csv('df_data.csv', index=False)
            self.df = df

        rp.init_node('Audio_capture', anonymous = True)
        self.pub = rp.Publisher('/recep/mic_transcript',String ,queue_size=1)
        self.pub_log = rp.Publisher('/log', String, queue_size=1)

        self.rate = rp.Rate(10)

    def start_mic(self):
        microphone_activation()
        while not rp.is_shutdown():
            first_attempt = 0 

            while active_mic==1:
                if first_attempt == 0:
                    self.avatar.voice(str("O que você deseja saber?"))
                    print('active_mic: {}  first_attempt: {}'.format(active_mic, first_attempt))
                    first_attempt = 1

                #atenção a primeira interação.Contar active mic
                start_time = time.strftime("%a, %d %b %Y %H:%M:%S")
                print("Habilitado para fala......")

                speech,time_process = self.mic.listen()
                #speech = input(str('-> '))
                #time_process = 0

                if isinstance(speech, int)==False:
                    self.pub.publish(speech)
                    self.pub_log.publish("speechToText, captura de audio")            


                print('Pergunta: {}   Time: {}   Data: {}'.format(speech, time_process, start_time))
                if self.save:
                    self.df=pd.DataFrame([[speech, time_process,start_time]])
                    self.df.to_csv('df_data.csv', index=False, mode='a', header=False)


            print('active_mic: {}  first_attempt: {}'.format(active_mic, first_attempt))
            

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