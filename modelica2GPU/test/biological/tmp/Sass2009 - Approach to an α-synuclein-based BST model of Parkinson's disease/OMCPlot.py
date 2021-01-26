
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
variables_to_plot = ["Fe2","Protofibril","Fibril","Lewy_body","Dopamine","OH","OH_radical","H2O2","DA_quinone","Ubiquitin","E1","Ub_E1","UbcH8","UbcH8_Ub","Parkin","Parkin_sub","Parkin_synphilin_1","Parkin_synphilin_1_ub","Parkin_sub_ub4","Fragments","UCH_L1","L_Dopa","DOPAL","DOPAC","GSH","GSSG","Fe3","UbcH8ub2","UbcH8ub3","UbcH8ub4","UbcH13_Uev1a","UbcH13_Uev1a_ub","asyn_UCH_L1","asyn_ub","Protofibril_UCH_L1","Protofibril_Ub","UCH_L1_asyn_ub4","Hsc70_asyn","Hsc70_Protofibril","Hsc70_fibril","Hsc70","DA_S_parkin","O2","DA_GSH","Neuromelanin","Neuromelanin_ntox_Fe3","Alpha_synuclein","ATP","Synphilin_1","Substrate","TH","L_Tyr","CO2","Neurotoxins","Bioamines","VMAT2","O2_0","MAO","NH3","ALDH","NAD","NADH","Catalase","H2O","Gluta_per","Gluta_red","DDC","Preautophagosome_membrane","SOD","Cysteine","V_DA","V_ntox_ba","Vesicle_0","Autophagosome_0","Proteasome_0","Lysosome_0"]
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
