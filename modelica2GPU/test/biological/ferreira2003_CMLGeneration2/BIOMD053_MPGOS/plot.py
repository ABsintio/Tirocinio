
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
X[0]=0.0; //Amadori
X[1]=0.0; //CML
X[2]=0.25; //Glucose
X[3]=0.0; //Glyoxal
X[4]=0.0034; //Lysine
X[5]=0.0; //Schiff

//plot({Glucose}, externalWindow=true);
//getErrorString();
//plot({Lysine}, externalWindow=true);
//getErrorString();
plot({Schiff}, externalWindow=true);
getErrorString();
plot({Amadori, Glyoxal, CML}, externalWindow=true);
getErrorString();
"""

npvalues = np.array(values)
times = npvalues[:, 0]
x0    = npvalues[:, 1]
x1    = npvalues[:, 2]
x2    = npvalues[:, 3]
x3 = npvalues[:, 4]
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]


plt.plot(times, x2, marker="_", label="Glucose")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x4, marker="_", label="Lysine")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x5, marker="_", label="Schiff")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x0, marker="_", label="Amadori")
plt.plot(times, x3, marker="_", label="Glyoxal")
plt.plot(times, x1, marker="_", label="CML")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
