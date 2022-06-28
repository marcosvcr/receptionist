import socket
import time

after_hiddenState = None

def send_to_server(data):

	HOST = '200.144.114.175'
	PORT = 10006

	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((HOST, PORT))

	s.sendall(str.encode(data))
	s.close()


def face_expression(expression, auto_reset=True):


	expressions_list = ['neutral','happy','surprise','angry','sleep','disgust','fear','bored','cute','sad']

	if expression not in expressions_list:
		raise Exception("Expressão não disponível")	

		
	if auto_reset:
		send_to_server('neutral')
		time.sleep(0.1)


	send_to_server(expression)