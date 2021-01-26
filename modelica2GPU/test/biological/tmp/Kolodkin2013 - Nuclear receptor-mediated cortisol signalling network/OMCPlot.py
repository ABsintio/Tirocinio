
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
variables_to_plot = ["s28","s36","s46","s32","s42","s30","s40","s33","s39","s114","s155","s172","s173","s185","s84","s165","s109","s87","s119","s183","s178","s10","Cortisone","TAT_PROT","Ligand2","PXRprot_Ligand2","CYPgene_PXRprot_Ligand2","DEX","GRprot_DEX","PXRprot_DEX","DEX_degr","CYPgene_PXRprot_DEX","PXRgene_GRprot_DEX","GRgene_GRprot_DEX","TATgene_GRprot_DEX","s2","DEXout","CBG","CBG_CortOUT","Alb","Alb_CortOUT","CortAdded"]
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
