#! /opt/jmodelica/bin/jm_ipython.sh

#  #! /home/enrico/JModelica.org/build/Python/jm_ipython.sh


###! /usr/bin/env python

# Import compiler function
from pymodelica import compile_fmu
from pyfmi import load_fmu
import matplotlib.pyplot as plt
import sys
import numpy as N



maxt = 120
fmu = compile_fmu('System', ['system.mo', 'train.mo', 'gate.mo', 'controller.mo', 'monitor.mo'])
model = load_fmu(fmu)
opts = model.simulate_options()

#opts['CVode_options']['maxh'] = 1.0e-6   # Max integrator step size
#opts['ncp'] = 500 #Change the number of communication points  
#opts['CVode_options']['verbosity'] = 50 # No output
#opts['initialize'] = False 
#model.time = 0

res = model.simulate(start_time=0, final_time=maxt, options=opts)

t = res['time']

rows = 4
cols = 2
maxy =  5 # max(res['v3']);


# col 1
fig = 1
# 1 (1,1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['train.x'])
plt.grid()
#plt.axis([0, maxt, -1, 2])
plt.title('train.x')
#
fig = fig + 1
# 4 (1, 2)
plt.subplot(rows,cols,fig)
plt.plot(t, res['train.app'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('train.app')
#
fig = fig + 1
# 3 (2, 1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['gate.g'])
plt.grid()
#plt.axis([0, maxt, -1, 2])
plt.title('gate.g')
#
#
fig = fig + 1
# 4 (2, 2)
plt.subplot(rows,cols,fig)
plt.plot(t, res['train.exit'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('train.exit')
#
#
fig = fig + 1
# 3 (3, 1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['gate.m'])
plt.grid()
plt.axis([0, maxt, 0, 5])
plt.title('gate.m')
#
fig = fig + 1
# 4 (3, 2)
plt.subplot(rows,cols,fig)
plt.plot(t, res['K.lower'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('K.lower')
#
#
fig = fig + 1
# 3 (4, 1)
plt.subplot(rows,cols,fig)
plt.plot(t, res['M.y'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('M.y')
#
#
fig = fig + 1
# 4 (4, 2)
plt.subplot(rows,cols,fig)
plt.plot(t, res['K.raise'])
plt.grid()
plt.axis([0, maxt, -1, 2])
plt.title('K.raise')
#

plt.show()


