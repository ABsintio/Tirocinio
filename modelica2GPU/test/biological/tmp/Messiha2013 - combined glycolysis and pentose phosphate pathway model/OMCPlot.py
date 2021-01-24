
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
variables_to_plot = ["ADP","ATP","AcAld","BPG","DHAP","F16bP","F6P","G1P","G3P","G6P","GAP","GLC","NAD","P2G","P3G","PEP","PYR","T6P","UDP","UTP","ACE","EtOH","F26bP","GLCx","GLY","SUC","TRH","ADH1","CDC19","ENO1","ENO2","FBA1","GLK1","GPD1","GPD2","GPM1","HOR2","HXK1","HXK2","PDC1","PDC5","PDC6","PFK1","PFK2","PGI1","PGK1","PGM1","PGM2","RHR2","TDH1","TDH3","TPI1","TPS1","TPS2","UGP1","E4P","G6L","NADPH","P6G","R5P","Ru5P","S7P","X5P","GND1","GND2","NQM1","RKI1","RPE1","SOL3","TAL1","TKL1","ZWF1"]
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
