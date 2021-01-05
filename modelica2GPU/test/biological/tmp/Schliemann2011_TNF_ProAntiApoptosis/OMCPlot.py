
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
variables_to_plot = ["TNFR_E","TNF_E","TNF_TNFR_E","TNFR","RIP","TRADD","TRAF2","FADD","TNF_TNFR_TRADD","TNFRC1","TNFRCint1","TNFRCint2","TNFRCint3","TNFRC2","FLIP","TNFRC2_FLIP","TNFRC2_pCasp8","TNFRC2_FLIP_FLIP","TNFRC2_pCasp8_pCasp8","TNFRC2_FLIP_pCasp8","TNFRC2_FLIP_pCasp8_RIP_TRAF2","IKK","IKKa","A20","NFkB","IkBa","IkBa_NFkB","PIkBa","NFkB_N","IkBa_N","IkBa_NFkB_N","A20_mRNA","IkBa_mRNA","XIAP_mRNA","FLIP_mRNA","BAR","XIAP","pCasp8","pCasp3","pCasp6","Casp8","Casp3","Casp6","BAR_Casp8","XIAP_Casp3","PARP","cPARP"]
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
