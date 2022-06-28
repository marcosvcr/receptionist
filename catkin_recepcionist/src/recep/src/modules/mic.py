#!/usr/bin/env python3
import speech_recognition as sr
import time

class Mic:
	def __init__ (self):
		self.chunk_size = 1024
		self.sample_rate = 44100
		self.ambient_noise_duration = 1
		self.phrase_time_limit = 2

		self.recognizer = sr.Recognizer()

	def listen(self):
		
	    with sr.Microphone(chunk_size = self.chunk_size, sample_rate = self.sample_rate) as source: 
	        
	        self.recognizer.adjust_for_ambient_noise(source, duration = self.ambient_noise_duration)
	        self.recognizer.dynamic_energy_threshold = True
	            
	        audio = self.recognizer.listen(source, phrase_time_limit = self.phrase_time_limit)

	        with open('audio.wav', 'wb') as file:
	        	wav_data = audio.get_wav_data()
	        	file.write(wav_data)
	        start_time = time.time()
	        try:
	            transcription = self.recognizer.recognize_google(audio,language="pt-BR")            
	        except sr.UnknownValueError:
	            transcription = 1
	        except sr.RequestError:
	            transcription = 400
	        end_time = time.time()
	        process_time = end_time - start_time
	        return transcription, process_time 