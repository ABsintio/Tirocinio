
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
variables_to_plot = ["species_1","GnRH_Pit","LH_Pit","LH_Bld","GnRH_Hyp","FSH_Pit","FSH_Bld","Foll","CL","E2","P4","Inh","OT","Enz","PGF","IOF","src_GnRH","src_E2","src_P4","src_Inh","src_OT","src_Enz","src_PGF","src_LH","src_FSH","snk_GnRH_Hyp","src_GnRH_Pit","src_Foll","src_IOF","src_CL","snk_Inh","snk_P4","snk_E2","snk_GnRH_Pit","snk_LH","snk_FSH","snk_IOF","snk_CL","snk_Enz","snk_OT","snk_PGF","snk_Foll"]
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
