import time
from functools import wraps
import os
from threading import Thread

def wrapTime(f):
    @wraps(f)
    def wrapper(*args, **kargs):
        start = time.time()
        f(*args, **kargs)
        end = time.time()
        print(f"simulationTime: {(end - start)*1000}ms")
    return wrapper


os.system("omc build.mos > out") # Runno per creare i file e l'eseguibile


class SimulationTrhead(Thread):
    def __init__(self):
        super().__init__()
    
    def run(self):
        os.system("./SecondOrderSystemInitParams > /dev/null")


class Simulation:
    def __init__(self, num_sim):
        self.num_sim = num_sim
    
    @wrapTime
    def run_simulation(self):
        print(self.num_sim)
        for i in range(self.num_sim):
            st = SimulationTrhead()
            st.start()
            st.join()
    

ks = [1, 10, 100, 1000, 10000]
for n in ks:
    sim = Simulation(n)
    sim.run_simulation()
    
os.system("rm out")
os.system("rm *.o *.c *.mat *.h *.json SecondOrderSystemInitParams *.makefile *.log *.libs *_init.xml")
