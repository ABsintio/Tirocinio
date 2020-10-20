#! /opt/jmodelica/bin/jm_ipython.sh

#  #! /home/enrico/JModelica.org/build/Python/jm_ipython.sh


###! /usr/bin/env python

# Import compiler function
from pymodelica import compile_fmu
from pyfmi import load_fmu
import matplotlib.pyplot as plt
import sys
import numpy as N

n = 1 # timepoints
r = 4 # inputs
u = N.zeros((n, r + 1))
u[0][0] = 0

fmu = compile_fmu('Controller', ['controller.mo'])

model = load_fmu(fmu)
opts = model.simulate_options()
#opts['CVode_options']['maxh'] = 1.0e-1   # Max integrator step size
#opts['filter'] = 'plant.*' 
#opts['result_handling'] = 'memory'  #save in RAM...instead of in a file
#opts['ncp'] = 500 #Change the number of communication points     
c1 = 8;
c2 = 11;
# pass a=8, b=3
# fail a = 9, b = 3
a = 9;  #7, 8, 9, 10
b = 3;  # 2, 3, 4, 5
v1 = -0.2;
v2 = 0.1
u[0][1] = a
u[0][2] = b
u[0][3] = c1
u[0][4] = c2
#model.set('p1.v', v1);
#model.set('p2.v', v2);
maxt = 10
input_object = (['A','B', 'C1', 'C2'], u)
res = model.simulate(start_time=0, final_time=maxt, options=opts)

t = res['time']

rows = 3
cols = 2
maxy =  5 # max(res['v3']);


# col 1
fig = 1
# 1 (1,1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['app'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('app')
#
fig = fig + 1
# 4 (1, 2)
plt.subplot(rows,cols,fig)
plt.plot(t, res['exit'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('exit')
#
fig = fig + 1
# 3 (3, 1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['oldapp'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('oldapp')
#
#
fig = fig + 1
# 3 (3, 1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['oldexit'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('oldexit')
#
fig = fig + 1
# 3 (3, 1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['lower'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('lower')

fig = fig + 1
# 4 (1, 2)
plt.subplot(rows,cols,fig)
plt.plot(t, res['raise'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('raise')
#
#
plt.show()


