
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
x2    = npvalues[:, 3]
x4    = npvalues[:, 5]

x6    = npvalues[:, 7]
x7    = npvalues[:, 8]
x8    = npvalues[:, 9]

plt.plot(times, x2, marker="_", label="Fru")
plt.plot(times, x4, marker="_", label="Glc")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x6, marker="_", label="HexP")
plt.plot(times, x7, marker="_", label="Suc")
plt.plot(times, x8, marker="_", label="Suc6P")


plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
