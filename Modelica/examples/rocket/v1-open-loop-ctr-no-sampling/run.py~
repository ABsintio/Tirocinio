#! /usr/bin/env python

# Import compiler function
from pymodelica import compile_fmu
from pyfmi import load_fmu
import matplotlib.pyplot as plt


fmu = compile_fmu('MoonLanding', ['celestial.mo', 'rocket.mo', 'moonlanding.mo'])



t0 = 0
t1 = 1000

for ite in range(1,3):
    model = load_fmu(fmu)
    opts = model.simulate_options()
    altval = model.get('apollo.initial_altitude')
    model.set('apollo.initial_altitude', altval*(1 + 0.1*ite))
    print "Apollo initial altitude begin iteration %d = %f\n" % (ite, model.get('apollo.initial_altitude'))

    res = model.simulate(start_time=t0, final_time=t1, options=opts)

    print "Apollo altitude end iteration %d = %f\n" % (ite, model.get('apollo.altitude'))
    plt.plot(res['time'],res['apollo.altitude'])
    

plt.title('altitude')
plt.grid()
plt.show()



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


plt.figure(1)
plt.subplot(4,1,1)
plt.tight_layout()
plt.plot(x,y1)
plt.grid()
plt.title('altitude last iteration')
plt.subplot(4,1,2)
plt.plot(x,y2)
plt.grid()
plt.title('velocity last iteration')
plt.subplot(4,1,3)
plt.plot(x,y3)
plt.grid()
plt.title('acceleration last iteration')
plt.subplot(4,1,4)
plt.plot(x,y4)
plt.title('thrust last iteration')
plt.xlabel('t[s]')
plt.grid()
plt.show()
