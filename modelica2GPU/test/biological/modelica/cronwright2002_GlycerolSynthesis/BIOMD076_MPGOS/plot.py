
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
X[0]=0.0; //adp
X[1]=0.0; //asa
X[2]=2.0; //asp
X[3]=0.0; //aspp
X[4]=10.0; //atp
X[5]=0.0; //hs
X[6]=0.0; //hsp
X[7]=0.0; //nadp
X[8]=2.0; //nadph
X[9]=0.0; //phos
X[10]=2.0; //thr
"""

npvalues = np.array(values)
times = npvalues[:, 0]
x0 = npvalues[:, 1]
x1 = npvalues[:, 2]
x2 = npvalues[:, 3]

plt.plot(times, x1, marker="_", label="G3P")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

