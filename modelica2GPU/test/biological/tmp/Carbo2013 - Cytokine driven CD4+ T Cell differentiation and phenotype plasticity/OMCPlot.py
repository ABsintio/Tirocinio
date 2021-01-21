
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
variables_to_plot = ["s22","s11","s51","s55","s30","s87","s89","s90","species_1","species_2","species_12","species_13","species_14","species_15","species_16","species_17","species_18","species_19","species_20","species_21","species_22","species_23","species_24","species_25","species_26","species_27","s48","s47","s46","s45","s44","s43","s38","s37","s36","s33","s32","s31","s25","s24","s14","s13","s12","s3","s2","s1","s52","s54","s53","s58","s59","s62","s63","s65","s10","s20","s67","s21","s68","s69","s28","s70","s26","s57","s73","s74","s75","s50","s49","s76","s39","s77","s78","s79","s29","s27","s80","s81","s35","s34","s82","s85","s83","s86","s40","species_8","species_9","species_10","species_11","species_4","species_3","species_5","species_6","species_7"]
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
