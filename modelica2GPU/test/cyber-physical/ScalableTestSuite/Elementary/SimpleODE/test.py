import time
from functools import wraps
import os
import multiprocessing
import sys

model_name = sys.argv[-1]

def wrapTime(f):
    @wraps(f)
    def wrapper(*args, **kargs):
        start = time.perf_counter()
        f(*args, **kargs)
        end = time.perf_counter()
        print(f"simulationTime: {(end - start)*1000}ms")
    return wrapper

os.system("omc build_100.mos > out")


def simulate(i):
    os.system("mkdir thread_{i} 2> /dev/null".format(i=i))
    os.system(f"cp {model_name} thread_{i}")
    os.system(f"cp {model_name}_init.xml thread_{i}")
    os.chdir(f"thread_{i}")
    os.system(f'./{model_name} 1> /dev/null')
    os.chdir("..")
    os.system(f"rm -rf thread_{i}")


@wrapTime
def runTest(i):
    num_process = i if i < 1000 else 100
    if i == 1:
        simulate(i)
    else:
        with multiprocessing.Pool(processes=num_process) as pool:
            results = pool.map_async(simulate, list(range(i)))
            results.wait()

k = 1
while k <= 10000:
    print(k)
    runTest(k)
    k *= 10
    
    
os.system("rm out")
os.system(f"rm *.o *.c *.h *.json {model_name} *.makefile *.log *.libs *_init.xml")
