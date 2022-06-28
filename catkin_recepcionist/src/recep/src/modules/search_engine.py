from unicodedata import normalize
from difflib import SequenceMatcher
import os
import xml.etree.ElementTree as ET
import re



class Search_engine():
	def __init__(self):
		self.names = None
		self.hotkeys = None

	def _lemmatization(self, words):
		
		lemma = (normalize("NFD", words).encode("ascii", "ignore").decode("utf-8").lower())
		return lemma


	def _similarity(self, a, b):
		similarity = SequenceMatcher(None,a,b).ratio()

		return similarity

	def _likehood(self, complete_name1, complete_name2):
		complete_name1 = complete_name1.split(" ")
		complete_name2 = complete_name2.split(" ")
		sum_similarity = 0
				
		for name1 in complete_name1:
			most_similarity = 0

			for name2 in complete_name2:

				similarity = self._similarity(name1, name2)
		
				if similarity > most_similarity:
					most_similarity = similarity

			
			sum_similarity+=most_similarity

		average_similarity = sum_similarity/len(complete_name1)

		return average_similarity

	def name_search(self, name):
		name = self._lemmatization(name)

		script_dir = os.path.dirname(__file__)
		cwd = os.path.join(script_dir, "cti.owl")

		root = ET.parse(cwd).getroot()

		datas = {'nome': None, 'divisao': None, 'ramal': None, 'e-mail': None}
		
		listData = []

		c=0
		for person in root.findall('{http://www.w3.org/2002/07/owl#}NamedIndividual'):
			nameBase = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}nome_completo')
			if(nameBase is not None):
				fullName = nameBase.text
				
				fullNameLemma = self._lemmatization(fullName)

				compatibility = self._likehood(name, fullNameLemma)
				
				if compatibility > 0.9:

					datas['nome'] = nameBase.text
					datas['divisao'] = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}divisão').text
					datas['ramal'] = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}ramal').text
					datas['e-mail'] = person.find('{http://people.cti.gov.br/~paulo/cti.owl#}e-mail').text
					
					listData.append(datas.copy())
		return listData
