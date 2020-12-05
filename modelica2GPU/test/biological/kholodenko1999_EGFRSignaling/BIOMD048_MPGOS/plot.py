
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
X[0]=680.0; //EGF
X[1]=0.0; //GS
X[2]=85.0; //Grb
X[3]=105.0; //PLCg
X[4]=0.0; //PLCgP
X[5]=0.0; //PLCgl
X[6]=100.0; //R
X[7]=0.0; //R2
X[8]=0.0; //RG
X[9]=0.0; //RGS
X[10]=0.0; //RP
X[11]=0.0; //RPLCg
X[12]=0.0; //RPLCgP
X[13]=0.0; //RSh
X[14]=0.0; //RShG
X[15]=0.0; //RShGS
X[16]=0.0; //RShP
X[17]=0.0; //Ra
X[18]=34.0; //SOS
X[19]=0.0; //ShG
X[20]=0.0; //ShGS
X[21]=0.0; //ShP
X[22]=150.0; //Shc

plot({EGF, R, Ra, R2, RP, PLCg, RPLCg, RPLCgP, PLCgP, Grb, RG, SOS}, externalWindow=true);
getErrorString();
plot({RGS, GS, Shc, RSh, RShP, ShP, RShG, ShG, RShGS, ShGS}, externalWindow=true);
getErrorString();
"""

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
x10    = npvalues[:, 11]
x11    = npvalues[:, 12]
x12    = npvalues[:, 13]
x13    = npvalues[:, 14]
x14    = npvalues[:, 15]
x15    = npvalues[:, 16]
x16    = npvalues[:, 17]
x17    = npvalues[:, 18]
x18    = npvalues[:, 19]
x19    = npvalues[:, 20]
x20    = npvalues[:, 21]
x21    = npvalues[:, 22]
x22    = npvalues[:, 23]

plot1 = ([x0, x6, x17, x7, x10, x3, x11, x12, x4, x2, x8, x18], ["EFG", "R", "Ra", "R2", "RP", "PLCg", "RPLCg", "RPLCg", "PLCgP", "Grb", "RG", "SOS"])
plot2 = ([x9, x1, x22, x13, x16, x21, x14, x19, x15, x20], ["RGS", "GS", "Shc", "RSh", "RShP", "ShP", "RShG", "ShG", "RShGS", "ShGS"])


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
