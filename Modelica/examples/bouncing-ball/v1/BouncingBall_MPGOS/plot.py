import numpy as np
import matplotlib.pyplot as plt

filename="DenseOutput_0.txt"
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
h     = npvalues[:, 1]
v     = npvalues[:, 2]

plt.plot(times, h, marker="_", label="H")
plt.ylabel("Height")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, v, marker="_", label="V")
plt.ylabel("Velocity")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
