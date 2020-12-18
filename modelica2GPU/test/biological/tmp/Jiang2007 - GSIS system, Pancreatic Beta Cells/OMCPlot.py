
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
variables_to_plot = ["GLC","F6P","FBP","GAP","DPG","PEP","PYR_cyt","AMP","LAC","G3P","DHAP","OXA_cyt","Asp_cyt","Glu_cyt","OG_cyt","Mal_cyt","Acetyl_CoA_cyt","CoA_cyt","IsoCitcyt","Cit_cyt","ATP_cyt","ADP_cyt","NAD","NADH_cyt","NADP_cyt","NADPH_cyt","Pyr","CO2","CoA","Acetyl_CoA","Pi","Fum","SCoA","Suc","GTP","GDP","Ala","Asp","Glu","H2O","ETFred","ETFox","FADH2","FAD","OG","Mal","OXA","Cit","IsoCit","ATP","ADP","NADP_p","NADPH","NAD_p","NADH","Q","QH2","Cytc3p","Cytc2p"]
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
