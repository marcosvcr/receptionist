#!/usr/bin/env python3
import rospy as rp
from std_msgs.msg import String
import socket
from modules import communication, search_engine
import yaml
import ast
from collections import deque
from unicodedata import normalize


class Node:
	def __init__(self):
		rp.init_node('Search', anonymous=True)
		self.send = communication.Avatar()
		self.pub = rp.Publisher('/recep/ontology_result', String, queue_size=10)

	def publisher(self, sentence):
		self.pub.publish(str(sentence))

	def pub_log(self, log):
		self.pub_log.publish(str(log))
		

class Ontology_response:
	def __init__(self):
		self.extracted_hotkeys = None
		self.extracted_names = None		
		self.data_name = search_engine.Search_engine()

	def database_search(self, names):
		database_result = []

		for name in names:
			result = self.data_name.name_search(name)
			database_result.append(result)

		return database_result

	def sort(self, lista_1, lista_2, ponteiro=0):
		if ponteiro == (len(lista_1)-1):
			return lista_1, lista_2

		menor=ponteiro
		for i in range(ponteiro, len(lista_1)):
			if len(lista_1[i])<len(lista_1[menor]):
				lista_1[menor], lista_1[i]=lista_1[i], lista_1[menor]
				lista_2[menor], lista_2[i]=lista_2[i], lista_2[menor]
	
		return self.sort(lista_1, lista_2, ponteiro+1)


def _lemmatization(sentence):

	sentence_lemmatized = normalize("NFD", 	str(sentence)).encode("ascii", "ignore").decode("utf-8").lower()

	return sentence_lemmatized

def search_knowledge(question):
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)	
	s.connect(('200.144.112.91', 9002))
	s.send(str.encode(question))
	from_server = s.recv(4096).decode()
	s.close()
	dict_server = ast.literal_eval(from_server)

	answer = dict_server['answer']
	score = dict_server['score']
	return score, answer

def queue_construction(names, datas, tags):
	fila = []
	fila.append(tags)

	for i in range(len(names)):
		item = [names[i], datas[i]]
		fila.append(item)

	return fila

def greetings(sentence):
	response = None
	sentence = _lemmatization(sentence)
	#dict_sentence = ast.literal_eval(sentence)
	#sentence = ' '.join(dict_sentence)
	print(type(sentence))


	saudacoes = (
				 "ola",
				 "bom dia",
				 "boa tarde",
				 "boa noite",
				 "oi"
				)

	agradecimentos = (
						"obrigado",
						"obrigada",
						"grato", 
						"grata"
					 )

	despedidas = (					
					"ate mais",
					"tchau",					
					"adeus",
					"ate breve",
					"ate logo",
					"falou"
				 )
	for despedida in despedidas:

		if despedida in sentence:
			response = "Tchau"
	
	for agradecimento in agradecimentos:
		if agradecimento in sentence:
			response = "De nada"	

	for saudacao in saudacoes:
		if saudacao in sentence:
			response = "Olá. Posso lhe ajudar?"
		
	return response

def main():

	node = Node()
	ontology = Ontology_response()
	avatar = communication.Avatar()

	while not rp.is_shutdown():
		print('Esperando menssagem: ')
		mic_transcript = rp.wait_for_message("/recep/morphological_data", String).data
		mic_transcript = yaml.load(mic_transcript, yaml.FullLoader)

		answer = greetings(mic_transcript[0])


		if answer:
			avatar.voice(str(answer))
			print(answer)
		else:
			print(mic_transcript[0])
			score, answer = search_knowledge(mic_transcript[0])
			print('#'*50)
			print('Answer: ', answer)
			print('Score: ', score)
			print('#'*50)
			print('Server: ', score > 0.08)
			if score > 0.08:
				avatar.voice(str(answer))
				print(answer)	
			else:
				text = mic_transcript[0]
				names = mic_transcript[1]
				tags = mic_transcript[2]

				tag_code = ''
				for value in tags.values():
					if value == True:
						tag_code +='1'
					else:
						tag_code +='0'

				datas = ontology.database_search(names)

				if names:
					datas, names = ontology.sort(datas, names)
				
				queue = queue_construction(names,datas, tag_code)			
				node.publisher(queue)


if __name__ == "__main__":
    main()