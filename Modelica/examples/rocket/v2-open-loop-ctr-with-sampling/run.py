#! /usr/bin/env python

# Import compiler function
from pymodelica import compile_fmu
from pyfmi import load_fmu
import matplotlib.pyplot as plt


fmu = compile_fmu('MoonLanding', ['celestial.mo', 'rocket.mo', 'moonlanding.mo'])



t0 = 0
Tstep = 100

model = load_fmu(fmu)
opts = model.simulate_options()
mass = model.get('apollo.initialmass')
altitude = model.get('apollo.initial_altitude')
velocity = model.get('apollo.initial_velocity')

for ite in range(5):
    model = load_fmu(fmu)
    opts = model.simulate_options()
    #opts['CVode_options']['maxh'] = 1.0e-4   # max integration time step, 
    #opts['CVode_options']['atol'] = 1.0e-6   # tolerance, 
    #opts['initialize'] = False   # keep values so far
    #model.time = t0   # sdet model time
    #sampling_time = model.get('T')
    #model.set('T', sampling_time*(1 + 0.1*ite))
    #print "Apollo sampling time at iteration %d = %f\n" % (ite, model.get('T'))

    # set initial state
    model.set('apollo.initialmass', mass)
    model.set('apollo.initial_altitude', altitude)
    model.set('apollo.initial_velocity', velocity)
    t1 = t0 + Tstep
    res = model.simulate(start_time=t0, final_time=t1, options=opts)
    # save model state
    mass = model.get('apollo.mass')
    altitude = model.get('apollo.altitude')
    velocity = model.get('apollo.velocity')
    t0 = t0 + Tstep

    x = res['time']
    y1 = res['apollo.altitude']
    y2 = res['apollo.velocity']
    y3 = res['apollo.acceleration']
    y4 = res['apollo.thrust']

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



