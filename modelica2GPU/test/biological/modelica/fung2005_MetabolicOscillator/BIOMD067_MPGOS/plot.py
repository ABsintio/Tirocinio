
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
X[0]=0.0; //AcCoA
X[1]=0.0; //AcP
X[2]=0.0; //Acs
X[3]=0.0; //HOAc
X[4]=0.0; //HOAc_E
X[5]=0.0; //LacI
X[6]=0.0; //OAc
X[7]=0.0; //Pta
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

plt.plot(times, x0, marker="_", label="AcCoA")
plt.plot(times, x1, marker="_", label="AcP")
plt.plot(times, x6, marker="_", label="OAc")
plt.plot(times, x3, marker="_", label="HOAc")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x5, marker="_", label="LacI")
plt.plot(times, x2, marker="_", label="Acs")
plt.plot(times, x7, marker="_", label="Pta")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
