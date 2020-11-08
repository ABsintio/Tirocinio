from OMPython import OMCSessionZMQ
import time
from functools import wraps

def wrapTime(f):
    @wraps(f)
    def wrapper(*args, **kargs):
        start = time.time()
        f(*args, **kargs)
        end = time.time()
        print(f"simulationTime: {end - start}ms")
    return wrapper

omc = OMCSessionZMQ()

omc.sendExpression("loadModel(Modelica)")
omc.sendExpression("loadFile(\"package.mo\")")
omc.sendExpression("laodFile(\"Sampling.mo\")")

@wrapTime
def runTest(i):
	for j in range(i):
		omc.sendExpression("simulate(sampling.Samping, stopTime=10)")

k = 1
while k <= 10000:
    print(k)
    runTest(k)
    k *= 10
