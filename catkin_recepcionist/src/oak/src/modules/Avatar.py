import socket
import time

class Avatar():
	def __init__(self):			

	 	self.HOST = '200.144.114.175'
	 	self.PORT_voice = 9002
	 	self.PORT_expression = 10006

	 	self._after_hiddenState = None

	def _handler(self, sentence):
		sentence.replace(" ","  ")
		return sentence

	def _sending_to_avatar(self, information, HOST, PORT):
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.connect((HOST, PORT))
		s.send(str.encode(information))
		s.close()


	def voice(self, speech):
		HOST = self.HOST
		PORT = self.PORT_voice
		speech = self._handler(speech)
		self._sending_to_avatar(speech, HOST, PORT)


	def face_expression(self, expression,auto_reset=True):
		HOST = self.HOST
		PORT = self.PORT_expression 

		expressions_list = ['neutral','happy','surprise','angry','sleep','disgust','fear','bored','cute','sad']

		if expression not in expressions_list:
			raise Exception("Expressão não disponível")	
			
		if auto_reset:
			self._sending_to_avatar('neutral', HOST, PORT)
			time.sleep(0.1)

		self._sending_to_avatar(expression, HOST, PORT)


def main():
	avatar=Avatar()

	active=True
	
	while active:
		answer = input(str('Fala avatar'))
		avatar.voice(answer)

if __name__=="__main__":
	main()