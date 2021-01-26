
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
variables_to_plot = ["Fru_e","_2PGA_c","Fru_g","Fru_c","DHAP_c","ATP_g","DHAP_g","ADP_g","Glc6P_g","ADP_c","_3PGA_c","Fru6P_g","Fru6P_c","Pi_g","O2_c","NADP_c","ATP_c","NADP_g","_6PG_g","CO2_c","Rul5P_c","_6PG_c","Rul5P_g","Glc6P_c","Rib5P_c","_13BPGA_g","Glc_c","Rib5P_g","Glc_g","Glc_e","NADPH_g","NADPH_c","Pyr_c","Pyr_e","NAD_g","Fru16BP_g","GA3P_g","Gly_e","TSH2_c","CO2_g","Gly3P_c","Gly3P_g","_6PGL_c","TS2_c","_6PGL_g","PEP_c","AMP_g","_3PGA_g","AMP_c","NADH_g"]
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
