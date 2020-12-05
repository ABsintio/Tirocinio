
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
plot({NADH, O2, H2O2, per3, coI, ArH}, externalWindow=true);
getErrorString();
plot({coII, Ar, NADrad, super, per2}, externalWindow=true);
getErrorString();

X[0]=0.0; //Ar
X[1]=500.0; //ArH
X[2]=0.0; //H2O2
X[3]=0.0; //NAD
X[4]=0.0; //NAD2
X[5]=0.0; //NADH
X[6]=0.0; //NADHres
X[7]=0.0; //NADrad
X[8]=0.0; //O2
X[9]=12.0; //O2g
X[10]=0.0; //coI
X[11]=0.0; //coII
X[12]=0.0; //coIII
X[13]=0.0; //per2
X[14]=1.4; //per3
X[15]=0.0; //super
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
x15 = npvalues[:, 16]

plot1 = ([x5, x8, x2, x14, x10, x1], ["NADH", "O2", "H2O2", "per3", "coI", "ArH"])
plot2 = ([x11, x0, x7, x15, x13], ["coII", "Ar", "NADrad", "super", "per2"])

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
