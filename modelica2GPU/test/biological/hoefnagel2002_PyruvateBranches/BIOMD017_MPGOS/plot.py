
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
x0    = npvalues[:, 1]
x12   = npvalues[:, 13]
x1    = npvalues[:, 2]
x13   = npvalues[:, 14]
x18   = npvalues[:, 19]
x10   = npvalues[:, 11]

x3    = npvalues[:, 4]
x6    = npvalues[:, 7]
x5    = npvalues[:, 6]
x4    = npvalues[:, 5]
x7    = npvalues[:, 8]


plt.plot(times, x0, marker="_", label="ADP")
plt.plot(times, x12, marker="_", label="NAD")
plt.plot(times, x1, marker="_", label="ATP")
plt.plot(times, x13, marker="_", label="NADH")
plt.plot(times, x18, marker="_", label="pyruvate")
plt.plot(times, x10, marker="_", label="CoA")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x3, marker="_", label="AcCoA")
plt.plot(times, x6, marker="_", label="AcP")
plt.plot(times, x5, marker="_", label="AcO")
plt.plot(times, x4, marker="_", label="AcLac")
plt.plot(times, x7, marker="_", label="AcetoinIn")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
