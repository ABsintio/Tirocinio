
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
variables_to_plot = ["mw73259e20_240e_4f3a_b2e0_9ca248658898","mw15abaa48_d7d0_4845_ae04_c573d289d495","mwfcfaf604_14d4_47a6_b021_226d1fb5497c","mw8796c919_9251_4970_8f87_0bca9ecfeb5c","mw849ed3fd_87d9_44d2_9f3e_4d631b900d41","mwcb834e43_dc57_45ae_9452_f4c10955caf1","mwf166ad55_4ff0_49fb_95d2_b657ad7653d5","mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5","mw919f8a86_e702_4b24_9cd7_adad694fcf9b","mw812f63db_4cb0_40ad_b92b_9874be969dfe","mw08818dfe_fb12_45cc_8c1d_d965f142d0ce"]
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
