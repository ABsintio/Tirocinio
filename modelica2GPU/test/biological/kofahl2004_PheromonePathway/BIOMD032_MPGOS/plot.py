
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
x1 = npvalues[:, 2]
x17 = npvalues[:, 18]
x35 = npvalues[:, 36]
x36 = npvalues[:, 37]

plt.plot(times, x1, marker="_", label="Bar1")
plt.plot(times, x17, marker="_", label="Ste12a")
plt.plot(times, x35, marker="_", label="complexM")
plt.plot(times, x36, marker="_", label="complexN")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

x9 = npvalues[:, 10]
x12 = npvalues[:, 13]

plt.plot(times, x9, marker="_", label="GaGDP")
plt.plot(times, x12, marker="_", label="Gbc")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
