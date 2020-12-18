
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
variables_to_plot = ["CRP","PC","PC_CRP","C4","C4a","C4b","C2","C1","PC_CRP_C1","C2a","C2b","C4b_C2a","C3","C3a","C3b","dC3b","MASP","dC4b_C2a","GlcNac","GlcNac_LF","LF","GlcNac_LF_MASP","PC_CRP_LF","PC_CRP_LF_MASP","GlcNac_LF_CRP","GlcNac_LF_CRP_C1","C4BP","C4BP_PC_CRP","C4BP_GlcNac_LF_CRP","iC4b_C2a","C4BP_C4b","C4b_C2a_C4BP","dC4b_C2a_C4BP","PC_CRP_LF_C1","C4BP_PC_CRP_LF","GlcNac_LF_CRP_MASP","PC_CRP_LF_C1_MASP","GlcNac_LF_C1_MASP","GlcNac_HF","HF","GlcNac_HF_MASP","X"]
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
