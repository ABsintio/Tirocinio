
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
variables_to_plot = ["Ca2_free","Arr","Arr_di","Arr_tetra","Ca2_buff","G_GTP","Ga_GDP","Ga_GTP","Ga_GTP_PDE_a_Ga_GTP","Ga_GTP_a_PDE_a_Ga_GTP","Gbg","Gt","Ops","Ops_G","Ops_G_GTP","Ops_Gt","PDE","PDE_Ga_GTP","PDE_a_Ga_GTP","R","R0","R0_G","R0_G_GTP","R0_Gt","R0_RKpre","R1","R1_Arr","R1_G","R1_G_GTP","R1_Gt","R1_RKpost","R1_RKpre","R2","R2_Arr","R2_G","R2_G_GTP","R2_Gt","R2_RKpost","R2_RKpre","R3","R3_Arr","R3_G","R3_G_GTP","R3_Gt","R3_RKpost","R3_RKpre","R4","R4_Arr","R4_G","R4_G_GTP","R4_Gt","R4_RKpost","R4_RKpre","R5","R5_Arr","R5_G","R5_G_GTP","R5_Gt","R5_RKpost","R5_RKpre","R6","R6_Arr","R6_G","R6_G_GTP","R6_Gt","R6_RKpost","R6_RKpre","RGS","RGS_Ga_GTP_a_PDE_a_Ga_GTP","RGS_PDE_a_Ga_GTP","RK","R_Gt","RecR_Ca","RecR_Ca_RK","RecT","cGMP"]
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
