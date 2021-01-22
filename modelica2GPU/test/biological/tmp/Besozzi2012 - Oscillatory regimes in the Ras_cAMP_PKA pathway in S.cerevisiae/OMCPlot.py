
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
variables_to_plot = ["Ras2_GDP","Cdc25","Ras2_GDP_Cdc25","Ras2_Cdc25","GDP","GTP","Ras2_GTP_Cdc25","Ras2_GTP","Ira2","Ras2_GTP_Ira2","CYR1","Ras2_GTP_CYR1","ATP","cAMP","PKA","cAMP_PKA","IIcAMP_PKA","IIIcAMP_PKA","IVcAMP_PKA","C","R_2cAMP","R","R_C","Pde1","Pde1f","cAMP_Pde1f","AMP","PPA2","Pde2","cAMP_Pde2","Cdc25f","Ira2P","Ras2_GTP_Ira2P"]
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
