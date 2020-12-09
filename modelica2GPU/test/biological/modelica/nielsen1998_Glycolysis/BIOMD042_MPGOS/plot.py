
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

"""
X[0]=0.07383339999999999; //ACA
X[1]=0.108367; //ADP
X[2]=0.00261149; //AMP
X[3]=4.49064; //ATP
X[4]=0.299109; //DPG
X[5]=0.33981; //EtOH
X[6]=0.65939; //F6P
X[7]=0.00770135; //FBP
X[8]=0.00190919; //GAP
X[9]=0.0112817; //GLC
X[10]=3.62057; //NAD
X[11]=0.6161180000000001; //NADH
X[12]=0.0; //P
X[13]=0.0021125; //PEP
X[14]=0.00422702; //PYR
"""
x0 = npvalues[:, 1]
x1 = npvalues[:, 2]
x2 = npvalues[:, 3]
x3 = npvalues[:, 4]
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]
x6 = npvalues[:, 7]
x7 = npvalues[:, 8]
x8 = npvalues[:, 9]
x9 = npvalues[:, 10]
x10 = npvalues[:, 11]
x11 = npvalues[:, 12]
x12 = npvalues[:, 13]
x13 = npvalues[:, 14]
x14 = npvalues[:, 15]

plot1 = ([x3, x1, x2, x9, x6, x7, x8, x10], ["ATP", "ADP", "AMP", "GLC", "F6P", "FBP", "GAP", "NAD"])
plot2 = ([x11, x4, x13, x14, x0, x5, x12], ["NADH", "DPG", "PEP", "PYR", "ACA", "EtOH", "P"])

for x, y in zip(plot1[0], plot1[1]):
    plt.plot(times, x, marker="_", label=y)

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

for x, y in zip(plot2[0], plot2[1]):
    plt.plot(times, x, marker="_", label=y)

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
