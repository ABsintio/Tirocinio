
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
variables_to_plot = ["NatP","MisP","Hsp70","Hsp90","Hsp70_dam","Hsp90_dam","Hsp90_Proteasome","Hsp70_Proteasome","Hsp70Client","Hsp90Client","Hsp70_Hsp70Client","Hsp90_Hsp90Client","Akt","Akt_Hsp90","CHIP","Akt_CHIP_Hsp90","Akt_Proteasome","Hsf1","Hsf1_Hsp90","Hsp90_MisP","Hsp70_MisP","Hsf1_Hsf1_Hsf1","Hsf1_Hsf1_Hsf1_P","Hsf1_Hsf1","HSEHsp70","HSEHsp90","HSEHsp70_Hsf1_Hsf1_Hsf1","HSEHsp70_Hsf1_Hsf1_Hsf1_P","HSEHsp90_Hsf1_Hsf1_Hsf1","HSEHsp90_Hsf1_Hsf1_Hsf1_P","Jnk","Jnk_P","Ppx","Mkp1","Mkp1_P","Mkp1_Proteasome","Hsp70_Ppx","Pkc","p38","p38_P","Proteasome","MisP_Proteasome","AggP","SeqAggP","AggP_Proteasome","ROS","ATP","ADP","Source","Sink","p38Death","JNKDeath","PIDeath","CellDeath"]
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
