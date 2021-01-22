
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
variables_to_plot = ["NULL","Ins","InR","Ins_InR","Ins_InR_P","Ins_2_InR_P","cytoplasm_InR","cytoplasm_Ins_2_InR_P","cytoplasm_Ins_InR_P","PTP1B","IRS1_TyrP_PI3K","PI345P3","PIP2","Akt","Akt_P2","PKC","PKC_P","AS160","AS160_P","cytoplasm_GLUT4","cellsurface_GLUT4","PTEN","PP2A","extracellular_ROS","PTP1B_ox","PTEN_ox","ROS","GSH","GSSG","cytoplasm_SOD2","NOX_inact","NOX","NOX_deact","Mt","IRS1","IRS1_TyrP","IRS1_PolySerP","IRS1_TyrP_PolySerP","PI3K","JNK_P","IKK_P","JNK","IKK","DUSP","DUSP_ox","null","degr_Foxo1","cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0","nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0","dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0","cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1","nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1","dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1","cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0","nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0","dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0","cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1","nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1","dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1","cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0","nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0","dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0","cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1","nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1","dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1","cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0","nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0","dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0","cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1","nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1","dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1","cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0","nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0","dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0","cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1","nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1","dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1","cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0","nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0","dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0","cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1","nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1","dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1","cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0","nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0","dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0","cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1","nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1","dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1","cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0","nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0","dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0","cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1","nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1","dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1","nucleus_RNA_InR","cytoplasm_RNA_InR","nucleus_RNA_SOD2","cytoplasm_RNA_SOD2","E2F1","SGK","CDK2","AMPK","CBPP300","SIRT1","E3","USP7","SCF","Proteasome"]
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
