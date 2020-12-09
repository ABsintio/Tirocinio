
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
X[0]=0.5566; //CC
X[1]=0.4982; //CCPT
X[2]=3.6628; //CLK
X[3]=1.0; //CYC
X[4]=4.1953; //PDP
X[5]=2.7527; //PER
X[6]=0.4014; //PT
X[7]=2.7527; //TIM
X[8]=3.175; //VRI
X[9]=0.2583; //clkm
X[10]=0.003185; //clkp
X[11]=0.3175; //pdpm
X[12]=0.003185; //pdpp
X[13]=0.2395; //perm
X[14]=0.003185; //perp
X[15]=0.08; //prcpdp
X[16]=0.041; //prcper
X[17]=0.043; //prct
X[18]=0.0585; //prcv
X[19]=0.426; //prpc
X[20]=0.489; //prvc
X[21]=0.2395; //timm
X[22]=0.003185; //timp
X[23]=0.2571; //vrim
X[24]=0.003185; //vrip

plot({VRI, CLK, PDP, PER, TIM}, externalWindow=true);
getErrorString();
plot({vrim, pdpm, perm, clkm}, externalWindow=true);
getErrorString();
"""

npvalues = np.array(values)
times = npvalues[:, 0]
x8 = npvalues[:, 9]
x2 = npvalues[:, 3]
x4 = npvalues[:, 5]
x5 = npvalues[:, 6]
x7 = npvalues[:, 8]
x23 = npvalues[:, 24]
x11 = npvalues[:, 12]
x13 = npvalues[:, 14]
x9 = npvalues[:, 10]

plt.plot(times, x8, marker="_", label="VRI")
plt.plot(times, x2, marker="_", label="CLK")
plt.plot(times, x4, marker="_", label="PDP")
plt.plot(times, x5, marker="_", label="PER")
plt.plot(times, x7, marker="_", label="TIM")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()

plt.plot(times, x23, marker="_", label="vrim")
plt.plot(times, x11, marker="_", label="pdpm")
plt.plot(times, x13, marker="_", label="perm")
plt.plot(times, x9, marker="_", label="clkm")

plt.ylabel("concentrazioni")
plt.xlabel("Time [s]")
plt.legend(loc="upper left")
plt.show()
