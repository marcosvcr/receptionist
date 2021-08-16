#!/usr/bin/env python3
import rospy as rp
from std_msgs.msg import String
import spacy
from unicodedata import normalize


toPub = {}
frase = None
spacy.prefer_gpu()
nlp = spacy.load("pt_core_news_lg")

pub = rp.Publisher('taggers', String, queue_size=10)

rp.init_node('morphology', anonymous=True)
r = rp.Rate(1)

while not rp.is_shutdown():

	f = rp.wait_for_message("speechToText", String).data
	
	doc = nlp(str(f))
	for token in doc:
		token_lemma = normalize("NFD", str(token)).encode("ascii", "ignore").decode("utf-8").lower()
		toPub[token_lemma]=token.pos_	
	
	pub.publish(str(toPub))
	print('-> ', toPub)
	toPub = {}

	r.sleep()
