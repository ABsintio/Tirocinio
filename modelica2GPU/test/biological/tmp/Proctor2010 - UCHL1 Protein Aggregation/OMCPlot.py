
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
variables_to_plot = ["NatP","MisP","Ub","E1","E2","E3","E3_MisP","DUB","Proteasome","ROS","E1_Ub","E2_Ub","E3_MisP_Ub","E3_MisP_Ub2","E3_MisP_Ub3","E3_MisP_Ub4","E3_MisP_Ub5","E3_MisP_Ub6","E3_MisP_Ub7","E3_MisP_Ub8","MisP_Ub4_Proteasome","MisP_Ub5_Proteasome","MisP_Ub6_Proteasome","MisP_Ub7_Proteasome","MisP_Ub8_Proteasome","E3_MisP_Ub_DUB","E3_MisP_Ub2_DUB","E3_MisP_Ub3_DUB","E3_MisP_Ub4_DUB","E3_MisP_Ub5_DUB","E3_MisP_Ub6_DUB","E3_MisP_Ub7_DUB","E3_MisP_Ub8_DUB","AggP1","AggP2","AggP3","AggP4","AggP5","SeqAggP","AggP_Proteasome","ATP","ADP","AMP","UCHL1","UCHL1_Proteasome","UCHL1_damaged_Proteasome","Lysosome","UCHL1_damaged","Lamp2a","Lamp2a_UCHL1_damaged","Ub_UCHL1","SUB","SUB_misfolded","E3SUB","E3SUB_SUB_misfolded","E3SUB_SUB_misfolded_Ub","E3SUB_SUB_misfolded_Ub2","E3SUB_SUB_misfolded_Ub3","E3SUB_SUB_misfolded_Ub4","E3SUB_SUB_misfolded_Ub5","E3SUB_SUB_misfolded_Ub6","E3SUB_SUB_misfolded_Ub7","E3SUB_SUB_misfolded_Ub8","E3SUB_SUB_misfolded_Ub_UCHL1","E3SUB_SUB_misfolded_Ub2_UCHL1","E3SUB_SUB_misfolded_Ub3_UCHL1","E3SUB_SUB_misfolded_Ub4_UCHL1","E3SUB_SUB_misfolded_Ub5_UCHL1","E3SUB_SUB_misfolded_Ub6_UCHL1","E3SUB_SUB_misfolded_Ub7_UCHL1","E3SUB_SUB_misfolded_Ub8_UCHL1","SUB_misfolded_Ub4_Proteasome","SUB_misfolded_Ub5_Proteasome","SUB_misfolded_Ub6_Proteasome","SUB_misfolded_Ub7_Proteasome","SUB_misfolded_Ub8_Proteasome","asyn","asyn_Proteasome","asyn_Lamp2a","asyn_dam","Parkin","Parkin_asyn_dam","Parkin_asyn_dam_Ub","Parkin_asyn_dam_Ub2","Parkin_asyn_dam_Ub3","Parkin_asyn_dam_Ub4","Parkin_asyn_dam_Ub5","Parkin_asyn_dam_Ub6","Parkin_asyn_dam_Ub7","Parkin_asyn_dam_Ub8","Parkin_asyn_dam_Ub_DUB","Parkin_asyn_dam_Ub2_DUB","Parkin_asyn_dam_Ub3_DUB","Parkin_asyn_dam_Ub4_DUB","Parkin_asyn_dam_Ub5_DUB","Parkin_asyn_dam_Ub6_DUB","Parkin_asyn_dam_Ub7_DUB","Parkin_asyn_dam_Ub8_DUB","asyn_dam_Ub4_Proteasome","asyn_dam_Ub5_Proteasome","asyn_dam_Ub6_Proteasome","asyn_dam_Ub7_Proteasome","asyn_dam_Ub8_Proteasome","AggA1","AggA2","AggA3","AggA4","AggA5","AggD1","AggD2","AggD3","AggD4","AggD5","AggU1","AggU2","AggU3","AggU4","AggU5","AggS1","AggS2","AggS3","AggS4","AggS5","Source","Sink","aggasyn","aggasyndam","aggParkin","aggUb","aggE3","aggDUB","aggMisP","aggUchl1","aggUchl1dam","aggSUB","upregUb"]
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
