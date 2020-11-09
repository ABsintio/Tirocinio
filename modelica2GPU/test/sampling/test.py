import time
from functools import wraps
import os

def wrapTime(f):
    @wraps(f)
    def wrapper(*args, **kargs):
        start = time.time()
        f(*args, **kargs)
        end = time.time()
        print(f"simulationTime: {end - start}ms")
    return wrapper

os.system("omc run.mos > out")

@wrapTime
def runTest(i):
	for j in range(i):
		os.system("./sampling.Sampling > out")

k = 1
while k <= 10000:
    print(k)
    runTest(k)
    k *= 10
    
os.system("rm out")
os.system("sh clear.sh")
