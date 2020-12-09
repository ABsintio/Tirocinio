
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
            
"""
X[0]=0.0; //AMP
X[1]=0.0; //Acetic_acid
X[2]=0.0; //Amadori
X[3]=0.0; //C5
X[4]=0.0; //Cn
X[5]=0.0; //Formic_acid
X[6]=0.0; //Fru
X[7]=160.0; //Glu
X[8]=0.0; //Melanoidin
X[9]=0.0; //Triose
X[10]=15.0; //lys_R

//plot({Glu, Fru}, externalWindow=true);
//getErrorString();
//plot({Formic_acid, Acetic_acid, Melanoidin}, externalWindow=true);
//getErrorString();
plot({lys_R, Amadori, Cn, C5, AMP, Triose}, externalWindow=true);
getErrorString();
"""

npvalues = np.array(values)
times = npvalues[:, 0]
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

plt.plot(times, x7, marker="_", label="Glu")
plt.plot(times, x6, marker="_", label="Fru")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x5, marker="_", label="Formic_acid")
plt.plot(times, x1, marker="_", label="Acetic_acid")
plt.plot(times, x8, marker="_", label="Melanoidin")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x10, marker="_", label="lys_R")
plt.plot(times, x2, marker="_", label="Amadori")
plt.plot(times, x4, marker="_", label="Cn")
plt.plot(times, x5, marker="_", label="C5")
plt.plot(times, x0, marker="_", label="AMP")
plt.plot(times, x9, marker="_", label="Triose")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
