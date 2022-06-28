#!/usr/bin/env python3
import rospy as rp
from std_msgs.msg import String
import spacy
from unicodedata import normalize
import socket
import time

class Node_nlp:
	def __init__(self):
		print('Iniciado')
		rp.init_node('Morphology', anonymous=True)
		spacy.prefer_gpu()
		self.nlp = spacy.load("pt_core_news_lg")
		self.pub = rp.Publisher('/recep/morphological_data', String, queue_size=10)
		self.rate = rp.Rate(10)

	def publisher(self, token_dictionary):
		self.pub.publish(str(token_dictionary)) 
		print(token_dictionary)

	def _lemmatization(self, sentence):

		sentence_lemmatized = normalize("NFD", 	str(sentence)).encode("ascii", "ignore").decode("utf-8").lower()

		return sentence_lemmatized

	def names_extract(self, sentence):

		names=[]

		doc = self.nlp(sentence)

		for ent in doc.ents:
			names.append(ent.text)

		return names


	def hotkey_extract(self, sentence):
		sentence = self._lemmatization(sentence)
		text =''
		count_keys=-1
		
		hotkeys={'divisao':'divisao',
		'laboratorio':'divisao',
		'departamento':'divisao',
		'sala':'divisao',
		'ramal':'ramal',
		'telefone':'ramal',
		'e-mail':'e-mail'}

		len_hotkeys = len(hotkeys)

		tags_hotkeys = {'divisao': False, 'ramal': False, 'e-mail': False}

		for key in hotkeys:
			text += key + ' '
			count_keys +=1

		training_text = text + sentence

		training_text = self.nlp(training_text)

		hotkeys_tokens = training_text[:len_hotkeys]
		quest_tokens = training_text[len_hotkeys:]

		for hotkey_token in hotkeys_tokens:
			for quest_token in quest_tokens:
				word_similarity = hotkey_token.similarity(quest_token)
				if word_similarity >= 0.5:
					tags_hotkeys[hotkeys[str(hotkey_token)]]=True

		return tags_hotkeys

def main():
	nlp = Node_nlp()	
	while not rp.is_shutdown():
		mic_transcript = rp.wait_for_message("/recep/mic_transcript", String).data
		#mic_transcript = input(str('-> '))
		names = nlp.names_extract(mic_transcript)
		tags_hotkeys = nlp.hotkey_extract(mic_transcript)
		nlp_datas = [mic_transcript, names, tags_hotkeys]
		print(nlp_datas)
		
		nlp.publisher(nlp_datas)

if __name__ == "__main__":
    main()
