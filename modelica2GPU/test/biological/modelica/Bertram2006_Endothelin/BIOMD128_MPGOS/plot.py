
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
x6    = npvalues[:, 7]
x7    = npvalues[:, 8]
x8    = npvalues[:, 9]
x9    = npvalues[:, 10]

plt.figure(figsize=[15.0, 8.0])
plt.plot(times, x7, marker="_", label="h")
plt.plot(times, x8, marker="_", label="inh")
plt.plot(times, x2, marker="_", label="V")
plt.plot(times, x9, marker="_", label="n")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.savefig("MPGOSPlot1.png")
plt.close()

plt.figure(figsize=[15.0, 8.0])
plt.plot(times, x3, marker="_", label="c")
plt.plot(times, x5, marker="_", label="cer")
plt.plot(times, x4, marker="_", label="cAMP")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.savefig("MPGOSPlot2.png")
plt.close()
