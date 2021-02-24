import matplotlib.pyplot as plt
import numpy as np
import json

plt.rcParams.update({'font.size': 15})

def get_speedup_efficiency(lista):
    speedups = []
    efficiencies = []

    i = 10
    for sim in lista[1:]:
        speedup = i * lista[0][-1] / sim[-1]
        efficiency = speedup / i
        i *= 10

        speedups.append(speedup)
        efficiencies.append(efficiency)

    return speedups, efficiencies
        

tests = json.load(open("tests.json", mode="r"))

t20 = tests['20']['simulations (msec)']
t60 = tests['60']['simulations (msec)']
t166 = tests['166']['simulations (msec)']

sp20, ef20 = get_speedup_efficiency(t20)
sp60, ef60 = get_speedup_efficiency(t60)
sp166, ef166 = get_speedup_efficiency(t166)

x_axis = ['10', '100', '1000', '10000']
for x, y in [(sp20, ef20), (sp60, ef60), (sp166, ef166)]:
    plt.plot(x_axis, x, color="m", label="Speedup", marker="o")
    plt.xlabel("Istanze di simulazione")
    plt.ylabel("Speedup")
    plt.legend(loc="upper left")
    plt.show()

    plt.plot(x_axis, y, color="c", label="Efficienza", marker="o")
    plt.xlabel("Istanze di simulazione")
    plt.ylabel("Efficienza")
    plt.legend(loc="upper right")
    plt.show()    
