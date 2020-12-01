
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

npvalues = np.array(values)
times = npvalues[:, 0]
x0 = npvalues[:,1]
x1 = npvalues[:,2]
x2 = npvalues[:,3]
x3 = npvalues[:,4]
x4 = npvalues[:,5]
x5 = npvalues[:,6]
x6 = npvalues[:,7]
x7 = npvalues[:,8]
x8 = npvalues[:,9]
x9 = npvalues[:,10]

plt.plot(times, x1, marker="_", label="ADPi")
plt.plot(times, x3, marker="_", label="ATPi")
plt.plot(times, x5, marker="_", label="Cri")
plt.plot(times, x8, marker="_", label="PCri")
plt.plot(times, x7, marker="_", label="PCr")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x0, marker="_", label="ADP")
plt.plot(times, x2, marker="_", label="ATP")
plt.plot(times, x4, marker="_", label="Cr")
plt.plot(times, x9, marker="_", label="Pi")
plt.plot(times, x6, marker="_", label="P")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
