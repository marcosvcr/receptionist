#!/usr/bin/env python3
import rospy
from rosapi.srv import Topics, Services

topics = rospy.ServiceProxy('/rosapi/topics', Topics)
services = rospy.ServiceProxy('/rosapi/services', Services)
topiclist = topics()
#servicelist = services()