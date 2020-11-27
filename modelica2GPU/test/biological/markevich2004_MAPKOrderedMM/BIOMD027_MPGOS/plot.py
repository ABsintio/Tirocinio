
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
x3 = npvalues[:, 4]
x4 = npvalues[:, 5]

plt.plot(times, x0, marker="_", label="M")
plt.plot(times, x3, marker="_", label="Mp")
plt.plot(times, x4, marker="_", label="Mpp")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
