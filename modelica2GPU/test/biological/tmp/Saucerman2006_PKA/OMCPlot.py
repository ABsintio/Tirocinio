
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
variables_to_plot = ["Gsbg_cell","L_cell","Gsa_gdp_cell","Gsa_gtp_cell","b1AR_S464_cell","PDEcAMP_cell","PDE_cell","ATP_cell","b1AR_cell","Gs_cell","A2RC_cell","A2R_cell","PKAC_cell","ARC_cell","PKAC_AKAR_cell","Propranolol_cell","b1ARinhib_cell","light_spot_cell","AC_cell","PKI_cell","PKAC_PKI_cell","RC_cell","b1AR_Gs_cell","cAMP_cell","GsAC_cell","IBMX_cell","PDE_IBMX_cell","Fsk_cell","FskAC_cell","b1AR_p_cell","L_b1AR_cell","AKAR_cell","AKARp_cell","PP_cell","PP_AKARp_cell","DMNB_cAMP_cell","L_b1AR_Gs_cell"]
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
