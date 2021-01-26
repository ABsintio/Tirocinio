
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
variables_to_plot = ["ADAMTS4_mRNA","cFos","cFos_mRNA","cJun","cJun_mRNA","DUSP16","IRAK2","IRAK2_TRAF6","IRAK2_TRAF6_PP4","JAK1","JAK1_P","JNK","JNK_P","Matriptase","MKP1","MMP1_mRNA","MMP3_mRNA","MMP13_mRNA","p38","p38_P","PP4","proMMP1","proMMP3","proMMP13","PTPRT","SOCS3","SOCS3_mRNA","STAT3_cyt","STAT3_P_cyt","TIMP1_mRNA","TIMP3_mRNA","TRAF6","TRAF6_PP4","ADAMTS4","ADAMTS4_TIMP1","ADAMTS4_TIMP3","Aggrecan","Aggrecan_Collagen2","AggFrag","ColFrag","Collagen2","IL1","MMP1","MMP1_TIMP1","MMP1_TIMP3","MMP3","MMP3_TIMP1","MMP3_TIMP3","MMP13","MMP13_TIMP1","MMP13_TIMP3","OSM","TIMP1","TIMP3","IL1_IL1R","IL1_IL1Ra","IL1_IL1R_IRAK2","IL1R","IL1Ra","OSM_OSMR","OSM_OSMRa","OSMR_SOCS3","OSMR","OSMRa","cFos_cJun","cFos_P","cJun_P","cJun_dimer","SP1","SP1_TIMP1_DNA","STAT3_nuc","STAT3_P_nuc","TIMP1_DNA","Source","Sink"]
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
