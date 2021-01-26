
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-c", "--csv", help="Path relativo o assoluto del file CSV contenente i dati")
args = parser.parse_args()
csv_file = args.csv

# Apriamo e leggiamo il CSV in input
csv_data = pd.read_csv(csv_file)

# Prendiamo i nomi delle species con gli indici corrispettivi che utilizzeremo per il plotting
variables_to_plot = ["s51","s52","s53","s78","s85","s211","s213","s482","s483","s484","s489","s490","s491","s492","s493","s494","s495","s496","s498","s499","s500","s501","s536","s107","s108","s109","s110","s111","s112","s113","s445","s446","s447","s448","s451","s517","s518","s519","s520","s521","s522","s523","s524","s525","s526","s528","s529","s530","s531","s533","s535","s527","s1","s2","s3","s5","s6","s7","s17","s18","s20","s21","s22","s23","s24","s25","s26","s27","s29","s30","s31","s32","s33","s35","s200","s381","s383","s385","s387","s389","s391","s393","s473","s474","s475","s476","s477","s478","s479","s502"]
species_tuple = [(idx, specie) for idx, specie in enumerate(csv_data.head(0)) if specie in variables_to_plot and specie != "time"]

# Creiamo un array numpy per salvare i dati estrapolati dal CSV
data_numpy = np.array(csv_data)

# Prendiamo la colonna del tempo
time = data_numpy[:, 0]

# Prendiamo i valori a tuple di quattro i quali formeranno un singolo plot
plot_number = 1
for i in range(0, len(species_tuple), 4):
    current_vars = species_tuple[i:i+4]
    plt.figure(figsize=[15.0, 8.0])
    for j, var in current_vars:
        plt.plot(time, data_numpy[:, j], marker="_", label=var)
    plt.xlabel("Time")
    plt.legend(loc="upper left")
    plt.savefig("OMCPlot" + str(plot_number) + ".png")
    plot_number += 1
    plt.close()
