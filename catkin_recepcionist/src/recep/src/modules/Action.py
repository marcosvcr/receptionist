from __future__ import annotations
from abc import ABC, abstractmethod
from modules import Avatar



av = Avatar.Avatar()

lethalTempo = 0

followEye = False

class FollowEye:

	@staticmethod
	def getFollowEye():
		global followEye
		return followEye

	followEye = False




class Action:

	_state = None

	def __init__(self, state: State) -> None:
		self.setAction(state)

	def setAction(self, state:	State):

		self._state = state
		self._state.action = self


	def takeAction(self):
		self._state.takeAction()


	def sleep(self):
		self._state.sleep()

	def followEye(self):
		self._state.followEye()

	def engage(self):
		self._state.engage()



class State(ABC):

	@property
	def action(self) -> Action:
		return self._action

	@action.setter
	def action(self, action: Action) -> None:
		self._action = action


	@abstractmethod
	def sleep(self) -> None:
		pass

	@abstractmethod
	def followEye(self) -> None:
		pass

	@abstractmethod
	def engage(self) -> None:
		pass


	@abstractmethod
	def takeAction(self) -> None:
		pass
	


class sleepAction(State):



	def takeAction(self) -> None:
		global lethalTempo
		global followEye

		print(lethalTempo)
		if lethalTempo == 0:
			av.face_expression('sleep')
			followEye = False

		else:
			lethalTempo = lethalTempo + 1



	def sleep(self) -> None:
		global lethalTempo

		print("Already in the state")
		lethalTempo = lethalTempo + 1

	def followEye(self) -> None:
		global lethalTempo
		lethalTempo = 0
		self.action.setAction(followEyeAction())


		

	def engage(self) -> None:
		global lethalTempo
		lethalTempo = 0
		av.face_expression('neutral')
		self.action.setAction(engageAction())


class followEyeAction(State):


	def takeAction(self) -> None:
		global lethalTempo
		global followEye
		print(lethalTempo)

		if lethalTempo == 0:
			av.face_expression('neutral')
			followEye = True

		else:
			lethalTempo = lethalTempo + 1



	def sleep(self) -> None:
		global lethalTempo
		lethalTempo = 0
		self.action.setAction(sleepAction())

	def followEye(self) -> None:
		global lethalTempo
		print("already in the state")
		lethalTempo = lethalTempo + 1

		

	def engage(self) -> None:
		global lethalTempo
		lethalTempo = 0
		av.face_expression('neutral')
		self.action.setAction(engageAction())


class engageAction(State):


	def takeAction(self) -> None:
		global lethalTempo
		global followEye
		print(lethalTempo)

		if lethalTempo == 0:
			av.face_expression('happy')
			av.voice("Olah... tudo bem")
			followEye = True
		elif  lethalTempo == 1:
			av.face_expression('happy')
			av.voice("Vamos lah... chegue mais perto")
			followEye = True
		elif lethalTempo ==3:
			av.face_expression('sad')
			followEye = True

		if lethalTempo != 0:
			lethalTempo = lethalTempo + 1





	def sleep(self) -> None:
		global lethalTempo
		lethalTempo = 0
		self.action.setAction(sleepAction())

	def followEye(self) -> None:
		global lethalTempo
		lethalTempo = 0
		self.action.setAction(followEyeAction())

		

	def engage(self) -> None:
		global lethalTempo
		print("already in the state")	
		lethalTempo = lethalTempo + 1




















