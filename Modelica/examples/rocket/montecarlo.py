import os
from OMPython import OMCSession
import numpy as np

y = {}

omc = OMCSession()
omc.sendExpression("loadModel(Modelica)")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"/home/ubuntu/Desktop/software_verification/soft_ver/modelica/exam/ad.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"/home/ubuntu/Desktop/software_verification/soft_ver/modelica/exam/system.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"/home/ubuntu/Desktop/software_verification/soft_ver/modelica/exam/plant.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"/home/ubuntu/Desktop/software_verification/soft_ver/modelica/exam/controller.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"/home/ubuntu/Desktop/software_verification/soft_ver/modelica/exam/monitor.mo\")")
omc.sendExpression("getErrorString()")

for i in range(100):
	print "Iterazione",i
	with open ("modelica_rand.in", 'w') as f:
		rand1 = np.random.uniform(1,2)
		rand2 = np.random.uniform(1,2)
		rand3 = np.random.uniform(1,1.5)
		rand4 = np.random.uniform(1,1.5)

		f.write("ampiezza1="+str(rand1)+"\nampiezza2="+str(rand2)+"\nfrequenza1="+str(rand3)+"\nfrequenza2="+str(rand4)+"\n")

	omc.sendExpression("simulate(System, stopTime=100, simflag=\"outputFormat=csv\", simflags=\"-overrideFile=modelica_rand.in\")")
	omc.sendExpression("getErrorString()")

	y[i] = omc.sendExpression("val(monitor.y, 100)")

print y






