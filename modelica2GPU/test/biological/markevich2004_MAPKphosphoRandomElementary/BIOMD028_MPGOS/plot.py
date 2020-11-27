
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
x1 = npvalues[:, 2]
x2 = npvalues[:, 3]
x3 = npvalues[:, 4]
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]
x6 = npvalues[:, 7]
x7 = npvalues[:, 8]
x8 = npvalues[:, 9]
x9 = npvalues[:, 10]
x10 = npvalues[:, 11]
x11 = npvalues[:, 12]
x12 = npvalues[:, 13]
x13 = npvalues[:, 14]
x14 = npvalues[:, 15]
x15 = npvalues[:, 16]

plt.plot(times, x0, marker="_", label="M")
plt.plot(times, x11, marker="_", label="MpY")
plt.plot(times, x7, marker="_", label="MpT")
plt.plot(times, x14, marker="_", label="Mpp")
plt.plot(times, x1, marker="_", label="MEK")
plt.plot(times, x2, marker="_", label="MKP3")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x12, marker="_", label="MpY_MEK")
plt.plot(times, x8, marker="_", label="MpT_MEK")
plt.plot(times, x4, marker="_", label="M_MEK_Y")
plt.plot(times, x3, marker="_", label="M_MEK_T")
plt.plot(times, x15, marker="_", label="M_MEK_T")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
