#!/usr/bin/env python3

import socket

class Avatar():
	def __init__(self):			

	 	self.HOST = '192.168.37.138'
	 	self.PORT_voice = 9002
	 	self.PORT_expression = 10006
	 	self._after_hiddenState = None


	def _handler(self, sentence):
		sentence.replace(" ","  ")
		return sentence

	def _sending_to_avatar(self, information, HOST, PORT):
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.connect((HOST, PORT))
		print('Frase: "{}" enviada', information)
		s.send(str.encode(information))
		s.close()


	def voice(self, speech):
		speech = self._handler(speech)
		self._sending_to_avatar(speech, self.HOST, self.PORT_voice)


	def face_expression(self, expression, hiddenState=1,auto_reset=True):

		expressions_list = ['neutral','happy','surprise','angry','sleep','disgust','fear','bored','cute','sad']

		if expression not in expressions_list:
			raise Exception("Expressão não disponível")	

		if self._after_hiddenState != hiddenState:

			self._after_hiddenState = hiddenState
			
		if auto_reset:
			self._sending_to_avatar('neutral', self.HOST, self.PORT_expression)
			time.sleep(0.1)

		self._sending_to_avatar(expression, self.HOST, self.PORT_expression)


def main():
	avatar=Avatar()

	active=True
	
	while active:
		answer = input(str('Fala avatar: '))
		avatar.voice(answer)

if __name__=="__main__":
	main()