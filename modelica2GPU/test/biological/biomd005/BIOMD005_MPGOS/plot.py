
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
x3    = npvalues[:, 4]
x4    = npvalues[:, 5]
x5    = npvalues[:, 6]


plt.plot(times, x0, marker="_", label="[C2]")
plt.plot(times, x1, marker="_", label="[CP]")
plt.plot(times, x2, marker="_", label="[M]")
plt.plot(times, x3, marker="_", label="[YP]")
plt.plot(times, x4, marker="_", label="[Y]")
plt.plot(times, x5, marker="_", label="[pM]")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
