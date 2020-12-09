
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
X[0]=0.038; //A
X[1]=0.0; //B
X[2]=0.0; //I1
X[3]=0.0; //I2
X[4]=0.0; //I3
X[5]=0.372; //L
X[6]=0.0; //L_e
X[7]=0.000626; //M
X[8]=0.0149; //P
"""

npvalues = np.array(values)
times = npvalues[:, 0]
x0 = npvalues[:, 1]
x1 = npvalues[:, 2]
x2 = npvalues[:, 3]
x3 = npvalues[:, 4]
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]
x6 = npvalues[:, 7]
x7 = npvalues[:, 8]
x8 = npvalues[:, 9]

plt.plot(times, x7, marker="_", label="M")
plt.plot(times, x1, marker="_", label="B")
plt.plot(times, x0, marker="_", label="A")
plt.plot(times, x5, marker="_", label="L")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x8, marker="_", label="P")
plt.plot(times, x2, marker="_", label="I1")
plt.plot(times, x3, marker="_", label="I2")
plt.plot(times, x4, marker="_", label="I3")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
