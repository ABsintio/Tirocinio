
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
variables_to_plot = ["_20S","_26S","Ap","Bp","ADP","ATP","MT","Hsc70","Hsp90","CHIP","Bag2","TauH3RUb","TauH4RUb","Nucleus3","Nucleus4","Agg33","Agg43","Tau03R","TauN3R","TauH3R","Tau0_3R","Tau03RMT","TauN_3R","TauN3RMT","TauH_3R","TauH3RMT","TauH3R_Hsc70","TauH3R_Hsp90","Tau03R_Hsp90","TauH3R_CHIP_Hsc70","TauH3R_CHIP_Hsc70_Bag2","Tau04R","TauN4R","TauH4R","Tau0_4R","Tau04RMT","TauN_4R","TauN4RMT","TauH_4R","TauH4RMT","TauH4R_Hsc70","TauH4R_Hsp90","Tau04R_Hsp90","TauH4R_CHIP_Hsc70","TauH4R_CHIP_Hsc70_Bag2"]
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
