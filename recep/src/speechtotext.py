#!/usr/bin/env python3
import speech_recognition as sr
import numpy as np
import roslib
import rospy as rp
from std_msgs.msg import String, Int16
import time
import csv


face_detection = None
k=0

PKG = 'recep'
recognizer = sr.Recognizer()
open('timer_process.csv', 'w', newline='', encoding='utf-8')
...

def callback(data): 
    global face_detection, k
    face_detection = data.data
    if face_detection>0:
        k+=1
    else:
        k=0

    

def listen():
    with sr.Microphone(chunk_size = 1024, sample_rate = 44100) as source: 
        
        recognizer.adjust_for_ambient_noise(source, duration = 1)
        recognizer.dynamic_energy_threshold = True
            
        audio = recognizer.listen(source, phrase_time_limit=5)

        try:
            transcription = recognizer.recognize_google(audio,language="pt-BR")            
        except sr.UnknownValueError:
            transcription = 1
        except sr.RequestError:
            transcription = 400

    return transcription

def face():
    rp.Subscriber("/std_msgs/faces", Int16, callback, queue_size = 1)
    print("face: ",face_detection)

pub = rp.Publisher('speechToText', String,queue_size=10)
face()
rp.init_node('Hearing', anonymous = True)

r = rp.Rate(10)
while not rp.is_shutdown():

    
    print('Faces detectadas: ',face_detection)
    while k>30:
        print("Habiilitado para fala......")
        speech = listen()
        #speech=1
        if isinstance(speech, int)==False:
            print('{} Pergunta: {}'.format(k, speech))



            pub.publish(speech)
            
    else:
        print("Sem face detectada")
    
    
    
        
    r.sleep()
