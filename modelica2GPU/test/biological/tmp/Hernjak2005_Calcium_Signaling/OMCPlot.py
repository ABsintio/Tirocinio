
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
variables_to_plot = ["ERDensity_ERM","PA_D_Cytosol","PABCa_D_Cytosol","Ca_D_ER","h_D_ERM","PABMg_D_Cytosol","ERDensity_D_ERM","CG_D_Cytosol","D28kB_D_Cytosol","PA_Cytosol","CG_Cytosol","PABCa_Cytosol","Mg_Cytosol","D28k_high_Cytosol","D28k_high_D_Cytosol","Ca_ER","D28kB_high_D_Cytosol","CGB_D_Cytosol","Ca_D_Cytosol","CGB_Cytosol","D28k_Cytosol","D28kB_high_Cytosol","PABMg_Cytosol","IP3_Cytosol","Ca_Extracellular","D28k_D_Cytosol","IP3_D_Cytosol","Mg_D_Cytosol","Ca_Cytosol","h_ERM","Ca_D_Extracellular","D28kB_Cytosol"]
species_tuple = [(idx, specie) for idx, specie in enumerate(csv_data.head(0)) if specie in variables_to_plot and specie != "time"]

# Creiamo un array numpy per salvare i dati estrapolati dal CSV
data_numpy = np.array(csv_data)

# Prendiamo la colonna del tempo
time = data_numpy[:, 0]

# Prendiamo i valori a tuple di quattro i quali formeranno un singolo plot
plot_number = 1
for i in range(0, len(species_tuple), 4):
    current_vars = species_tuple[i:i+4]
    plt.figure()
    for j, var in current_vars:
        plt.plot(time, data_numpy[:, j], marker="_", label=var)
    plt.xlabel("Time")
    plt.legend(loc="upper left")
    plt.savefig("OMCPlot" + str(plot_number) + ".png")
    plot_number += 1
