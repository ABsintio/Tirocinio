
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
x0    = npvalues[:, 23]
x1    = npvalues[:, 24]
x2    = npvalues[:, 25]
x3    = npvalues[:, 26]



plt.plot(times, x0, marker="_", label="KKK_P_norm")
plt.plot(times, x1, marker="_", label="KK_PP_norm")
plt.plot(times, x2, marker="_", label="K_PP_norm")
plt.plot(times, x3, marker="_", label="rel_K_PP_max")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
