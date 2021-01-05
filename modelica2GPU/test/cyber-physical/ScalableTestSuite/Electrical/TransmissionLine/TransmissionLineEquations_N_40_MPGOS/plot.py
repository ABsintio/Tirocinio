
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
vars = [npvalues[:, i] for i in range(1, 81)]

plot_number = 1
idx = 0
for i in range(0, len(vars), 4):
    print(i)
    plott = vars[i:i+4]
    plt.figure(figsize=[15.0, 8.0])
    for x in plott:
        plt.plot(times, x, marker="_", label=f"x{idx}")
        idx += 1
    plt.xlabel("Time [s]")
    plt.legend(loc="upper left")
    plt.savefig(f"MPGOSPlot{plot_number}")
    plt.close()
    plot_number += 1
