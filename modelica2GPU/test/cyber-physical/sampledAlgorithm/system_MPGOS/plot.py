
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
x1    = npvalues[:, 2]
x2    = npvalues[:, 3]


plt.plot(times, x0, marker="_", label="x")
plt.plot(times, x1, marker="_", label="x_sampled")
plt.plot(times, x2, marker="x", label="i")
plt.ylabel("x, x_sampled, i")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
