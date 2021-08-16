#!/usr/bin/env python3

import rospy as rp
from std_msgs.msg import String
import yaml
import socket
import time
import csv

def ana(frase):
	
	HOST = '200.144.114.175'
	PORT = 9002

	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((HOST, PORT))

	s.sendall(str.encode(frase))
	print('-> ', frase)
	data = s.recv(2048)		
	
	s.close()
	time.sleep(len(frase)/12)		

def answer(sentence):	

	if isinstance(sentence, str) and sentence!='[]':
		
		sentence = yaml.load(sentence)
		
		if isinstance(sentence, str):
			ana(sentence)
		else:
			numberResults = len(sentence)
			for i in sentence:
				if i['d']==True and i['r']==True and i['e']==True:
					ana("{}   trabalha   na   divsão   {},   seu   ramal   é   {}   e   seu   i-mail   é   {}".format(i['nome'], i['divisao'], i['ramal'], i['e-mail']))			
				elif i['d']==True and i['r']==True:
					ana("{}   trabalha   na   divisão   {}   e   seu   ramal   é   {}".format(i['nome'], i['divisao'], i['ramal']))
				elif i['d']==True and i['e']==True:
					ana("{}   trabalha   na   divsão   {}   e   seu   i-mail   é   {}".format(i['nome'], i['divisao'], i['e-mail']))
				elif i['r']==True and i['e']==True:
					ana("O   ramal   de   {}   é   {}   e   seu   i-mail   é   {}".format(i['nome'], i['ramal'], i['e-mail']))
				elif i['d']==True:
					ana("{}   trabalha   na   divisão   {}".format(i['nome'], i['divisao']))
				elif i['r']==True:
					ana("O   ramal   de   {}   é   {}".format(i['nome'], i['ramal']))
				elif i['e']==True:
					ana("O   i-mail   de   {}   é   {}".format(i['nome'], i['e-mail']))
				else:
					ana("{}   trabalha   na   divsão   {},   seu   ramal   é   {}   e   seu   e - mail   é   {}".format(i['nome'], i['divisao'], i['ramal'], i['e-mail']))			
				time.sleep(1)
			ana('Mais   alguma   pergunta?')

pub = rp.Publisher('frase_resposta', String, queue_size=10)

rp.init_node('phrase', anonymous=True)
r = rp.Rate(1)

while not rp.is_shutdown():

	while not rp.is_shutdown():

		response = rp.wait_for_message("search_result", String).data
		answer(response)
				
		r.sleep()
