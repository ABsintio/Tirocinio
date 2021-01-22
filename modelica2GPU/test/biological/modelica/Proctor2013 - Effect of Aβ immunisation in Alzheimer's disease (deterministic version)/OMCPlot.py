
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
variables_to_plot = ["Mdm2","p53","Mdm2_p53","Mdm2_mRNA","p53_mRNA","ATMA","ATMI","p53_P","Mdm2_P","IR","ROS","damDNA","E1","E2","E1_Ub","E2_Ub","Proteasome","Ub","p53DUB","Mdm2DUB","DUB","Mdm2_p53_Ub","Mdm2_p53_Ub2","Mdm2_p53_Ub3","Mdm2_p53_Ub4","Mdm2_P1_p53_Ub4","Mdm2_Ub","Mdm2_Ub2","Mdm2_Ub3","Mdm2_Ub4","Mdm2_P_Ub","Mdm2_P_Ub2","Mdm2_P_Ub3","Mdm2_P_Ub4","p53_Ub4_Proteasome","Mdm2_Ub4_Proteasome","Mdm2_P_Ub4_Proteasome","GSK3b","GSK3b_p53","GSK3b_p53_P","Abeta","AggAbeta_Proteasome","AbetaPlaque","Tau","Tau_P1","Tau_P2","MT_Tau","AggTau","AggTau_Proteasome","Proteasome_Tau","PP1","NFT","ATP","ADP","AMP","AbetaDimer","AbetaPlaque_GliaA","GliaI","GliaM1","GliaM2","GliaA","antiAb","Abeta_antiAb","AbetaDimer_antiAb","degAbetaGlia","disaggPlaque1","disaggPlaque2","Source","Sink","kproteff"]
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
