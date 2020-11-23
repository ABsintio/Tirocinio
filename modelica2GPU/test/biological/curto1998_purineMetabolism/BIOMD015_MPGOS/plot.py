
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
x4    = npvalues[:, 5] # 1
x6    = npvalues[:, 7] # 2
x7    = npvalues[:, 8] # 1
x16    = npvalues[:, 17] # 3
x17    = npvalues[:, 18] # 3

plt.plot(times, x4, marker="_", label="PRPP")
plt.plot(times, x7, marker="_", label="Gua")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x6, marker="_", label="IMP")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x16, marker="_", label="dATP")
plt.plot(times, x17, marker="_", label="dGTP")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
