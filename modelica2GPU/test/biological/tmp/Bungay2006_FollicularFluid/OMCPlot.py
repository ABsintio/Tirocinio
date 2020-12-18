
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
variables_to_plot = ["II_f","II_l","mIIa_f","mIIa_l","V_f","V_l","Va_f","Va_l","VII_f","VII_l","VIIa_f","VIIa_l","X_f","X_l","Xa_f","Xa_l","APC_f","APC_l","PS_f","PS_l","Vai_f","Vai_l","PC_f","PC_l","TF_l","TF_VIIa_l","TF_VII_l","TF_VIIa_X_l","TF_VIIa_Xa_l","TF_VII_Xa_l","Xa_Va_l","V_Xa_l","IIa_f","V_IIa_l","Xa_Va_II_l","Xa_Va_mIIa_l","APC_PS_l","TFPI_f","AT_f","IIa_AT_f","TFPI_Xa_l","TFPI_Xa_TF_VIIa_l","APC_PS_Va_l","Xa_AT_f","VII_Xa_l","V_mIIa_l","TM_l","IIa_TM_l","IIa_TM_PC_l","mIIa_AT_l","LIPID","alpha2M_l","alpha2M_IIa_l","alpha2M_Xa_l"]
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
