
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
x0 = npvalues[:, 1]
x16 = npvalues[:, 17]
x7 = npvalues[:, 8]
x11 = npvalues[:, 12]
x12 = npvalues[:, 13]
x1 = npvalues[:, 2]


plt.plot(times, x0, marker="_", label="EI")
plt.plot(times, x16, marker="_", label="PyrP")
plt.plot(times, x7, marker="_", label="EIP")
plt.plot(times, x11, marker="_", label="HPr")
plt.plot(times, x12, marker="_", label="HPrP")
plt.plot(times, x1, marker="_", label="EIIA")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

x13 = npvalues[:, 14]
x2 = npvalues[:, 3]
x4 = npvalues[:, 5]
x3 = npvalues[:, 4]
x5 = npvalues[:, 6]
x6 = npvalues[:, 7]

plt.plot(times, x13, marker="_", label="HPrPIIA")
plt.plot(times, x2, marker="_", label="EIIAP")
plt.plot(times, x4, marker="_", label="EIICB")
plt.plot(times, x3, marker="_", label="EIIAPIICB")
plt.plot(times, x5, marker="_", label="EIICBP")
plt.plot(times, x6, marker="_", label="EIICBPGlc")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
