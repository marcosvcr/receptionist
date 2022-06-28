#!/usr/bin/env python3
import json
import rospy as rp
from std_msgs.msg import String
import yaml
import socket
import time
import csv
from modules import communication
import spacy
from collections import deque
import time

avatar = communication.Avatar()
def avatar_speaks(name=None, datas=None, n_answer=0):
	global avatar
	if n_answer == 0:
		answer = 'Desculpa. Poderia Repetir a pergunta?'
	elif n_answer == 1:
		answer = 'O e-mail de {} é {}'.format(datas['nome'], datas['e-mail'])
	elif n_answer == 2:
		answer = 'O ramal de {} é {}'.format(datas['nome'], datas['ramal'])
	elif n_answer == 3:
		answer = 'O ramal de {} é {} e seu e-mail é {}'.format(datas['nome'], datas['ramal'], datas['e-mail'])
	elif n_answer == 4:
		answer = '{} trabalha na divisão {}'.format(datas['nome'], datas['divisao'])
	elif n_answer == 5:
		answer = '{} trabalha na divisão {} e seu e-mail é {}'.format(datas['nome'], datas['divisao'], datas['e-mail'])
	elif n_answer == 6:
		answer = '{} trabalha na divisão {} e seu ramal é {}'.format(datas['nome'], datas['divisao'], datas['ramal'])
	elif n_answer == 7:
		answer = '{} Trabalha na divisão {}, seu ramal é {} e seu e-mail é {}'.format(datas['nome'], datas['divisao'], datas['ramal'], datas['e-mail'])
	elif n_answer == 8:
		answer = 'Gostaria de informações de qual pessoa?'
	elif n_answer == 9:
		answer = 'Para {}, foram encontrados os seguintes resultados.....'.format(name)
		for data in datas:
			answer += (' ' + str(data['nome'])+'...')
	elif n_answer == 10:
		answer = 'Para qual dos resultados deseja informação?'
	elif n_answer == 11:
		answer = 'Não foram encontradas informações para {} em nosso banco de dados.'.format(name)

	print('Answer: ', answer)

	avatar.voice(str(answer))
	wait = len(answer)/10
	time.sleep(wait)
	return answer
	

memory = None
def proper_answer(queue, tags):
	count = 0
	global memory
	print('QUEUE: ', queue)
	
	for item in queue:
		print('Item: ', item)
		count+=1

		if item[0] and not item[1]:
			avatar_speaks(name=item[0] , n_answer=11)

		elif not item[0] and not item[1]:
			avatar_speaks(n_answer=0)

		elif len(item[1])==1:
			if memory:
				tags=memory
			
			if tags=='001':
				avatar_speaks(datas=item[1][0], n_answer=1)
			elif tags=='010':
				avatar_speaks(datas=item[1][0], n_answer=2)
			elif tags=='011':
				avatar_speaks(datas=item[1][0], n_answer=3)
			elif tags=='100':
				avatar_speaks(datas=item[1][0], n_answer=4)
			elif tags=='101':
				avatar_speaks(datas=item[1][0], n_answer=5)
			elif tags=='110':
				avatar_speaks(datas=item[1][0], n_answer=6)
			elif tags=='111':
				avatar_speaks(datas=item[1][0], n_answer=7)
			else:
				avatar_speaks(datas=item[1][0], n_answer=7)
 
			memory = None

		elif len(item[1])>1:
			avatar_speaks(name=item[0], datas=item[1], n_answer=9)
			if count == len(queue):
				avatar_speaks(n_answer=10)
				memory=tags

def main():
	rp.init_node('Speech_constructor', anonymous=True)

	count = 0
	rate = rp.Rate(1)
	while not rp.is_shutdown():

		print('-'*80)
		print('Esperando Pergunta: ')
		response = rp.wait_for_message("/recep/ontology_result", String).data		
		queue_response = yaml.load(response, yaml.FullLoader)
		tag = queue_response.pop(0)
		proper_answer(queue_response, tag)		
			
if __name__=="__main__":
	main()