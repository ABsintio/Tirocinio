
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
variables_to_plot = ["AC_active_cyto_mem","G_GDP_cyto","G_protein_cyto","G_a_s_cyto","GRK_bg_cyto","iso_BAR_p_cyto_mem","PDE4_cyto","ATP_cyto","AC_PKA_cyto_mem","R2C2_cyto","PP_PDE_cyto","BAR_cyto_mem","BAR_G_cyto_mem","iso_extra","iso_BAR_cyto_mem","MAPK_active_cyto","MEK_cyto","MEK_active_cyto","B_Raf_active_cyto","bg_cyto","B_Raf_cyto","PKA_cyto","AC_cyto_mem","AMP_cyto","GRK_cyto","PP2A_cyto","MAPK_cyto","PTP_cyto","PTP_PKA_cyto","c_R2C2_cyto","c2_R2C2_cyto","c3_R2C2_cyto","iso_BAR_G_cyto_mem","PDE_high_km_cyto","cAMP_cyto","PTP_PP_cyto","PDE4_P_cyto"]
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
