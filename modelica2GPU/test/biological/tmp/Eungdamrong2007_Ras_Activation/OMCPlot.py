
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
variables_to_plot = ["RasGTP_Golgi_GM","EGF_EC","CAPRI_cyt","serca","PIP_PM","PI_PM","Shc_PM","CaCAPRI_PM_PM","RactCa","Shc_star_PM","EGFR_PM","PLC_act_PM","RasGTP_pal_cyt","PLC_PM","PIP2_PM","Activated_EGFR_PM","Ca","Ract","Rinh","RinhCa","IP3","RasGDP_Golgi_GM","Ca_RasGRP_GM_GM","DAG_GM_GM","RasGRP_DAG_GM","CaCAPRI_cyt","DAG_PM","RasGTP_depal_cyt","RasGDP_depal_cyt","RasGDP_pal_cyt","Ca_PLCe_cyt","Ras_CaPLCe_GM","PIP2_GM_GM","ER_erMembrane","Ca_ER","Sos_cyt","Grb2_cyt","PLCe_cyt","buffer_cyt","ca_buffer_cyt","SosGrb2_cyt","SGS_PM","RasGTP_PM","RasGDP_PM","RasGRP_cyt","CaRasGRP1_cyt"]
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
