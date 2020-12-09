
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
x1    = npvalues[:, 2]
x10   = npvalues[:, 11]

x6    = npvalues[:, 7]
x5    = npvalues[:, 6]
x4    = npvalues[:, 5]

plt.plot(times, x2, marker="_", label="Mp")
plt.plot(times, x1, marker="_", label="Cn")
plt.plot(times, x10, marker="_", label="Pt")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x1, marker="_", label="Cn")
plt.plot(times, x6, marker="_", label="P2")
plt.plot(times, x5, marker="_", label="P1")
plt.plot(times, x4, marker="_", label="P0")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
