
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
variables_to_plot = ["NatP","MisP","Ub","E1","E2","E3","DUB","Proteasome","ROS","E1_Ub","E2_Ub","E3_MisP","MisP_Ub","MisP_Ub2","MisP_Ub3","MisP_Ub4","MisP_Ub5","MisP_Ub6","MisP_Ub7","MisP_Ub8","MisP_Ub4_Proteasome","MisP_Ub5_Proteasome","MisP_Ub6_Proteasome","MisP_Ub7_Proteasome","MisP_Ub8_Proteasome","ATP","ADP","AMP","Source","degUb4","degUb5","degUb6","degUb7","degUb8","totMisP","refNatP","AggP","SeqAggP","AggP_Proteasome"]
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
