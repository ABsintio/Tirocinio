
import numpy as np
import matplotlib.pyplot as plt
import sys

filename=sys.argv[-1]
values = []
with open(filename, mode="r", encoding="utf-8") as f:
    start = False
    while (line := f.readline()):
        if start:
            new_line = line.strip().replace('\n', '')
            values.append([float(x.strip()) for x in new_line.split(",")])
        if "Time series" in line:
            start = True

"""
X[0]=1.19; //ATP
X[1]=0.0; //Carbo
X[2]=0.0; //EtOH
X[3]=9.144; //FDP
X[4]=0.0; //G6P
X[5]=0.0345; //Glci
X[6]=1.0; //Glco
X[7]=0.0; //Gly
X[8]=0.0095; //PEP
"""

npvalues = np.array(values)
times = npvalues[:, 0]
x0    = npvalues[:, 1]
x1    = npvalues[:, 2]
x2    = npvalues[:, 3]
x3 = npvalues[:, 4]
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]
x6 = npvalues[:, 7]
x7 = npvalues[:, 8]
x8 = npvalues[:, 9]

plt.plot(times, x5, marker="_", label="Glci")
plt.plot(times, x0, marker="_", label="ATP")
plt.plot(times, x4, marker="_", label="G6P")
plt.plot(times, x3, marker="_", label="FDP")
plt.plot(times, x8, marker="_", label="PEP")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

