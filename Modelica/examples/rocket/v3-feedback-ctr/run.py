#! /usr/bin/env python

# Import compiler function
from pymodelica import compile_fmu
from pyfmi import load_fmu
import matplotlib.pyplot as plt

# ecu
fmu = compile_fmu('MoonLanding', ['celestial.mo', 'rocket.mo', 'moonlanding.mo', 'ecu.mo'])

model = load_fmu(fmu)
opts = model.simulate_options()
#opts['ncp'] = 1000 #Change the number of communication points
 
print "Apollo initial altitude = %f\n" % model.get('apollo.initial_altitude')

res = model.simulate(start_time=0, final_time=300, options=opts)

x = res['time']
y1 = res['apollo.altitude']
y2 = res['apollo.velocity']
y3 = res['apollo.acceleration']
y4 = res['apollo.thrust']


#plt.plot(x, y1, x, y2, x, y3)
#plt.legend(('altitude', 'velocity', 'acceleration'))
#plt.plot(x, z)
#plt.grid()
#plt.show()

rows = 4
cols = 1
fig = 1

# 1
plt.figure(1)
plt.subplot(rows,cols,fig)
plt.plot(x,y1)
plt.grid()
plt.title('altitude')
fig = fig + 1
# 2
plt.subplot(rows,cols,fig)
plt.plot(x,y2)
plt.grid()
plt.title('velocity')
fig = fig + 1
# 3
plt.subplot(rows,cols,fig)
plt.plot(x,y3)
plt.grid()
plt.title('acceleration')
fig = fig + 1
# 4
plt.subplot(rows,cols,fig)
plt.plot(x,y4)
plt.title('thrust')
plt.xlabel('t[s]')
plt.grid()


plt.show()
