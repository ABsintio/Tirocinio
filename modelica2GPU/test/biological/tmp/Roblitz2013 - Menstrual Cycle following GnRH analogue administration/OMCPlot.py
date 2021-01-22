
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
variables_to_plot = ["AF1","AF2","E2","FSH_R","FSH_bld","FSH_pit","GnRH","GnRH_R_a","GnRH_R_i","InhA","InhA_delay","InhB","LH_Pit","LH_R","LH_bld","Lut1","Lut2","Lut3","Lut4","OvF","P4","PrF","R_FSH","R_FSH_des","R_Foll","R_GnRH_a","R_GnRH_i","R_LH","R_LH_des","csa1_degraded","s33","s38","s62","s64","s66","s67","s69","s71","s72","s74","s76","s78","s82","s85","s87","s92","s93","s94","s95","sa1_degraded","sa28_degraded","sa31_degraded","sa35_degraded","sa3_degraded","sa52_degraded","sa53_degraded","sa61_degraded","sa75_degraded","sa78_degraded","sa86_degraded","Sc1","Sc2","AF3","AF4","Ago_c","Ago_d","s102","s106","s108","s107","Ago_R_i","Ago_R_a","Ant_d","Ant_c","Ant_p","Ant_R","s113","s114","s115","s116"]
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
