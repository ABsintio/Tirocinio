#!/usr/bin/env python

import os
from OMPython import OMCSession
import numpy as np

#y = {}

omc = OMCSession()
omc.sendExpression("loadModel(Modelica)")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"celestial.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"rocket.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"moonlanding.mo\")")
omc.sendExpression("getErrorString()")


omc.sendExpression("simulate(MoonLanding, stopTime = 500.0)")
omc.sendExpression("getErrorString()")

omc.sendExpression("plot({apollo.altitude, apollo.thrust},externalWindow=true)")
omc.sendExpression("getErrorString()")

omc.sendExpression("plot({apollo.velocity, apollo.acceleration},externalWindow=true)")
omc.sendExpression("getErrorString()")
        

#for i in range(100):
#	print "Iterazione",i
#	with open ("modelica_rand.in", 'w') as f:
#		rand1 = np.random.uniform(1,2)
#		rand2 = np.random.uniform(1,2)
#		rand3 = np.random.uniform(1,1.5)
#		rand4 = np.random.uniform(1,1.5)

#		f.write("ampiezza1="+str(rand1)+"\nampiezza2="+str(rand2)+"\nfrequenza1="+str(rand3)+"\nf#requenza2="+str(rand4)+"\n")

#	omc.sendExpression("simulate(System, stopTime=100, simflag=\"outputFormat=csv\", simflags=\"-overrideFile=modelica_rand.in\")")
#	omc.sendExpression("getErrorString()")
#
#	y[i] = omc.sendExpression("val(monitor.y, 100)")
#
#print y





