
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
variables_to_plot = ["JAK2","EpoR","SHP1","SOS","Raf","MEK2","MEK1","ERK1","ERK2","pJAK2","pEpoR","mSHP1","actSHP1","mSOS","pRaf","ppMEK2","ppMEK1","ppERK1","ppERK2","pSOS","pMEK2","pMEK1","pERK1","pERK2","Delay01_mSHP1","Delay02_mSHP1","Delay03_mSHP1","Delay04_mSHP1","Delay05_mSHP1","Delay06_mSHP1","Delay07_mSHP1","Delay08_mSHP1","Epo"]
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
