
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
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]
x6 = npvalues[:, 7]
x7 = npvalues[:, 8]
x8 = npvalues[:, 9]
x9 = npvalues[:, 10]

x1 = npvalues[:, 2]
x3 = npvalues[:, 4]

plt.plot(times, x4, marker="_", label="PTc")
plt.plot(times, x5, marker="_", label="PTn")
plt.plot(times, x6, marker="_", label="Perc")
plt.plot(times, x7, marker="_", label="Perm")
plt.plot(times, x8, marker="_", label="Timc")
plt.plot(times, x9, marker="_", label="Timm")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x1, marker="_", label="CCn")
plt.plot(times, x3, marker="_", label="Clkm")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
