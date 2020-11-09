import os
from OMPython import OMCSessionZMQ
import numpy as np

y = {}

omc = OMCSessionZMQ()
omc.sendExpression("getVersion()")
omc.sendExpression("cd()")
omc.sendExpression("loadModel(Modelica)")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"ad.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"system.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"plant.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"controller.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"monitor.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("buildModel(System, stopTime=100)")
omc.sendExpression("getErrorString()")

for i in range(10):
	print "Iterazione",i
	with open ("modelica_rand.in", 'w') as f:
		rand1 = np.random.uniform(100,100)
		rand2 = np.random.uniform(0,0)
		rand3 = np.random.uniform(100,100)
		rand4 = np.random.uniform(1,1)

		f.write("ampiezza1="+str(rand1)+"\nampiezza2="+str(rand2)+"\nfrequenza1="+str(rand3)+"\nfrequenza2="+str(rand4)+"\n")

	omc.sendExpression("system(\"./System, -overrideFile=modelica_rand.in\")")
#	omc.sendExpression("simulate(System, stopTime=100, simflags=\"-overrideFile=modelica_rand.in\")")
	omc.sendExpression("getErrorString()")

	y[i] = omc.sendExpression("val(monitor.y, 100, \"System_res.mat\")")

print y



