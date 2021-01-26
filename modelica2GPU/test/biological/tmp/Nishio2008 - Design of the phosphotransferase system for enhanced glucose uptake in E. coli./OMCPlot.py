
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
variables_to_plot = ["CRP","CRPsiteI_crp","CRPsiteII_crp","CRPsite_cyaA","CRPsite_genome","CRPsite_ptsGp1","CRPsite_ptsGp2","CRPsite_ptsHp0","CRPsite_ptsHp1","CRPsite_ptsIp0","CRPsite_ptsIp1","CRPsite_mlcp1","CRPsite_mlcp2","Mlc","Mlcsite_mlcp1","Mlcsite_mlcp2","Mlcsite_ptsGp1","Mlcsite_ptsGp2","Mlcsite_ptsHp0","Mlcsite_ptsIp0","CRP_cAMP","CRP_cAMP_CRPsiteI_crp","CRP_cAMP_CRPsiteII_crp","CRP_cAMP_CRPsite_cyaA","CRP_cAMP_CRPsite_genome","CRP_cAMP_CRPsite_ptsGp1","CRP_cAMP_CRPsite_ptsGp2","CRP_cAMP_CRPsite_ptsHp0","CRP_cAMP_CRPsite_ptsHp1","CRP_cAMP_CRPsite_ptsIp0","CRP_cAMP_CRPsite_ptsIp1","CRP_cAMP_CRPsite_mlcp1","CRP_cAMP_CRPsite_mlcp2","Mlc_Mlcsite_ptsGp1","Mlc_Mlcsite_ptsGp2","Mlc_Mlcsite_ptsIp0","Mlc_Mlcsite_ptsHp0","Mlc_Mlcsite_mlcp1","Mlc_Mlcsite_mlcp2","IICB","IICB_Mlc","CYA","IIA_P","IIA_P_CYA","mRNA_cyaA","mRNA_crp","mRNA_ptsG","mRNA_ptsH","mRNA_ptsI","mRNA_crr","mRNA_mlc","IICB_P","IIA","HPr_P","HPr","EI_P","EI","cAMP","cyaA","cyaA_basal","crp","crp_basal","ptsGp1","ptsGp2","ptsHp0","ptsHp1","ptsIp0","ptsIp1","crr","mlcp1","mlcp2","Pyr","PEP","Glc6P","Glucose","ATP"]
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
