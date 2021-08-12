#!/usr/bin/env python3
import rospy as rp
from std_msgs.msg import String
import spacy
from unicodedata import normalize

PKG = 'recep'

toPub = {}
frase = None
spacy.prefer_gpu()
nlp = spacy.load("pt_core_news_lg")

def callback(data):	
	global frase 
	frase = data.data

def listener():
	rp.Subscriber("speechToText", String, callback)


pub = rp.Publisher('taggers', String, queue_size=10)
listener()
rp.init_node('morphology', anonymous=True)

r = rp.Rate(1)
previous_frase = None
while not rp.is_shutdown():
	
	if frase != previous_frase:
		previous_frase = frase
		doc = nlp(str(frase))
		for token in doc:
			token_lemma = normalize("NFD", str(token)).encode("ascii", "ignore").decode("utf-8").lower()
			toPub[token_lemma]=token.pos_	
		pub.publish(str(toPub))
		print('-> ', toPub)
		toPub = {}

	r.sleep()