
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
X[0]=0.0; //AA
X[1]=0.0; //Cn
X[2]=9.0; //DFG
X[3]=0.0; //E1
X[4]=0.0; //E2
X[5]=0.0; //FA
X[6]=0.0; //Fru
X[7]=0.0; //Glu
X[8]=0.0; //Gly
X[9]=0.0; //MG
X[10]=0.0; //Man
X[11]=0.0; //Mel
X[12]=0.0; //_1DG
X[13]=0.0; //_3DG

plot({DFG, Gly, MG}, externalWindow=true);
getErrorString();
//plot({AA, FA}, externalWindow=true);
//getErrorString();
//plot({Glu, Man, Fru}, externalWindow=true);
//getErrorString();
//plot({_3DG, _1DG}, externalWindow=true);
//getErrorString();
//plot({Mel}, externalWindow=true);
//getErrorString();
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
x11 = npvalues[:, 12]
x12 = npvalues[:, 13]
x13 = npvalues[:, 14]

plt.plot(times, x2, marker="_", label="DFG")
plt.plot(times, x8, marker="_", label="Gly")
plt.plot(times, x9, marker="_", label="MG")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x0, marker="_", label="AA")
plt.plot(times, x5, marker="_", label="FA")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x7, marker="_", label="Glu")
plt.plot(times, x10, marker="_", label="Man")
plt.plot(times, x6, marker="_", label="Fru")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x13, marker="_", label="3DG")
plt.plot(times, x12, marker="_", label="1DG")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x11, marker="_", label="Mel")
plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
