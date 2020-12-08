
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
X[0]=1.0; //CSK_cytoplasm
X[1]=1.0; //Cbp
X[2]=0.0; //Cbp_P
X[3]=0.0; //Cbp_P_CSK
X[4]=1.0; //PTP
X[5]=0.0; //PTP_pY789
X[6]=0.0; //srca
X[7]=0.0; //srcc
X[8]=1.0; //srci
X[9]=0.0; //srco
"""

npvalues = np.array(values)
times = npvalues[:, 0]
x0    = npvalues[:, 1]
x1    = npvalues[:, 2]
x2    = npvalues[:, 3]
x3 = npvalues[:, 4]
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]
x6 = npvalues[:, 7]
x7 = npvalues[:, 8]
x8 = npvalues[:, 9]
x9 = npvalues[:, 10]


plt.plot(times, x8, marker="_", label="srci")
plt.plot(times, x9, marker="_", label="srco")
plt.plot(times, x6, marker="_", label="srca")
plt.plot(times, x7, marker="_", label="srcc")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x0, marker="_", label="CSK_cytoplasm")
plt.plot(times, x4, marker="_", label="PTP")
plt.plot(times, x5, marker="_", label="PTP_pY789")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x3, marker="_", label="Cbp_P_CSK")
plt.plot(times, x1, marker="_", label="Cbp")
plt.plot(times, x2, marker="_", label="Cbp_P")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

