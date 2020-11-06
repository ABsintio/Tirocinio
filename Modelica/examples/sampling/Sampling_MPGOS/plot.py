
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
sin_x = npvalues[:, 1]
clock = npvalues[:, 2]
        
plt.plot(times, clock, marker="_", label="Clock", linewidth=1.0)
plt.plot(times, sin_x, marker="_", label="Sin_X", linewidth=1.0)
plt.ylabel("Clock, Sin_x")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.grid(True)
plt.show()
