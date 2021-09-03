#!/usr/bin/env python3
import rospy as rp
from std_msgs.msg import String
from unicodedata import normalize
import os
import xml.etree.ElementTree as ET
import re
from unicodedata import normalize
from difflib import SequenceMatcher
import socket
import ast
import xml.etree.ElementTree as ET

def hotkeys_extract(sentence):

	hk={'divisao':'d','laboratorio':'d','departamento':'d','ramal':'r','telefone':'r','e-mail':'e'}
	tagsHK = {'d': False, 'r': False, 'e': False}
	for skey in sentence:
		try:
			tagsHK[hk[skey]]=True
		except:
			erro='1'
	return tagsHK

def names_extract(sentence):

	name=[]
	for key in sentence:
		if sentence[key]=='PROPN':
			name.append(key)
	return name

def lemmatization(name):
	lemma = []
	for i in name:
		lemma.append(normalize("NFD", i).encode("ascii", "ignore").decode("utf-8").lower())
	return lemma


def similary(a, b):
	similary = SequenceMatcher(None,a,b).ratio()

	return similary

def likehood(name_1, name_2):
	c = 0
	sumSimilary = 0

	for i in name_1:
		for j in name_2:
			similar = similary(i, j)
			sumSimilary+=similar
			c+=1
			if similar > 0.9:				
				name_2.remove(j)
				break

	totalSimilary = sumSimilary/c

	return totalSimilary

def search(toSearch):

	cwd = '/home/gbnunes/Documentos/ros_project/catkin_recep/cti.owl'

	root = ET.parse(cwd).getroot()
	
	datas = {'nome': None, 'divisao': None, 'ramal': None, 'e-mail': None, 'd':toSearch['d'] ,'r':toSearch['r'] ,'e': toSearch['e']}
	
	listData = []
	 
	for person in root.findall('{http://www.w3.org/2002/07/owl#}NamedIndividual'):
		nameBase = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}nome_completo')

		if(nameBase is not None):
			fullName = re.split("\s",nameBase.text)  

			fullNameLemma = lemmatization(fullName)

			compatibility = likehood(toSearch['nome'], fullNameLemma)

			if compatibility > 0.6:

				datas['nome'] = nameBase.text
				datas['divisao'] = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}divisão').text
				datas['ramal'] = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}ramal').text
				datas['e-mail'] = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}e-mail').text
				listData.append(datas.copy())

	return listData

def seq2seq(sentence):

 	client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
 	client.connect(('200.144.114.226', 8002))
 	client.send(str.encode(sentence))
 	from_server = client.recv(4096)
 	client.close()

 	return from_server

	
pub = rp.Publisher('search_result', String, queue_size=10)

rp.init_node('Search', anonymous=True)
r = rp.Rate(1)
previous_sentence=None

while not rp.is_shutdown():

	sentence = rp.wait_for_message("taggers", String).data
	tag_search = []

	if isinstance(sentence, str)==True:
		name = names_extract(eval(sentence))
		hotkeys = hotkeys_extract(eval(sentence))
		
		if name == []:
			ss2s = ast.literal_eval(sentence)
			ss2s = ' '.join(list(ss2s))
			response = seq2seq(ss2s).decode()
			
		else:		
			
			tag_search=hotkeys
			tag_search['nome']=name
			try:
				response = search(tag_search)
			except:
				response=[]

		print('Response: ',response)		
		pub.publish(str(response))
	

	r.sleep()

