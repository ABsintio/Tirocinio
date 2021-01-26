
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
variables_to_plot = ["cam_RR_0_0","cam_RR_0_rbp","cam_RR_0_tbp","cam_RR_A_0","cam_RR_A_rbp","cam_RR_A_tbp","cam_RR_B_0","cam_RR_B_rbp","cam_RR_B_tbp","cam_RR_C_0","cam_RR_C_rbp","cam_RR_C_tbp","cam_RR_D_0","cam_RR_D_rbp","cam_RR_D_tbp","cam_RR_AB_0","cam_RR_AB_rbp","cam_RR_AB_tbp","cam_RR_AC_0","cam_RR_AC_rbp","cam_RR_AC_tbp","cam_RR_AD_0","cam_RR_AD_rbp","cam_RR_AD_tbp","cam_RR_BC_0","cam_RR_BC_rbp","cam_RR_BC_tbp","cam_RR_BD_0","cam_RR_BD_rbp","cam_RR_BD_tbp","cam_RR_CD_0","cam_RR_CD_rbp","cam_RR_CD_tbp","cam_RR_ABC_0","cam_RR_ABC_rbp","cam_RR_ABC_tbp","cam_RR_ABD_0","cam_RR_ABD_rbp","cam_RR_ABD_tbp","cam_RR_ACD_0","cam_RR_ACD_rbp","cam_RR_ACD_tbp","cam_RR_BCD_0","cam_RR_BCD_rbp","cam_RR_BCD_tbp","cam_RR_ABCD_0","cam_RR_ABCD_rbp","cam_RR_ABCD_tbp","cam_RT_0_0","cam_RT_0_rbp","cam_RT_0_tbp","cam_RT_A_0","cam_RT_A_rbp","cam_RT_A_tbp","cam_RT_B_0","cam_RT_B_rbp","cam_RT_B_tbp","cam_RT_C_0","cam_RT_C_rbp","cam_RT_C_tbp","cam_RT_D_0","cam_RT_D_rbp","cam_RT_D_tbp","cam_RT_AB_0","cam_RT_AB_rbp","cam_RT_AB_tbp","cam_RT_AC_0","cam_RT_AC_rbp","cam_RT_AC_tbp","cam_RT_AD_0","cam_RT_AD_rbp","cam_RT_AD_tbp","cam_RT_BC_0","cam_RT_BC_rbp","cam_RT_BC_tbp","cam_RT_BD_0","cam_RT_BD_rbp","cam_RT_BD_tbp","cam_RT_CD_0","cam_RT_CD_rbp","cam_RT_CD_tbp","cam_RT_ABC_0","cam_RT_ABC_rbp","cam_RT_ABC_tbp","cam_RT_ABD_0","cam_RT_ABD_rbp","cam_RT_ABD_tbp","cam_RT_ACD_0","cam_RT_ACD_rbp","cam_RT_ACD_tbp","cam_RT_BCD_0","cam_RT_BCD_rbp","cam_RT_BCD_tbp","cam_RT_ABCD_0","cam_RT_ABCD_rbp","cam_RT_ABCD_tbp","cam_TR_0_0","cam_TR_0_rbp","cam_TR_0_tbp","cam_TR_A_0","cam_TR_A_rbp","cam_TR_A_tbp","cam_TR_B_0","cam_TR_B_rbp","cam_TR_B_tbp","cam_TR_C_0","cam_TR_C_rbp","cam_TR_C_tbp","cam_TR_D_0","cam_TR_D_rbp","cam_TR_D_tbp","cam_TR_AB_0","cam_TR_AB_rbp","cam_TR_AB_tbp","cam_TR_AC_0","cam_TR_AC_rbp","cam_TR_AC_tbp","cam_TR_AD_0","cam_TR_AD_rbp","cam_TR_AD_tbp","cam_TR_BC_0","cam_TR_BC_rbp","cam_TR_BC_tbp","cam_TR_BD_0","cam_TR_BD_rbp","cam_TR_BD_tbp","cam_TR_CD_0","cam_TR_CD_rbp","cam_TR_CD_tbp","cam_TR_ABC_0","cam_TR_ABC_rbp","cam_TR_ABC_tbp","cam_TR_ABD_0","cam_TR_ABD_rbp","cam_TR_ABD_tbp","cam_TR_ACD_0","cam_TR_ACD_rbp","cam_TR_ACD_tbp","cam_TR_BCD_0","cam_TR_BCD_rbp","cam_TR_BCD_tbp","cam_TR_ABCD_0","cam_TR_ABCD_rbp","cam_TR_ABCD_tbp","cam_TT_0_0","cam_TT_0_rbp","cam_TT_0_tbp","cam_TT_A_0","cam_TT_A_rbp","cam_TT_A_tbp","cam_TT_B_0","cam_TT_B_rbp","cam_TT_B_tbp","cam_TT_C_0","cam_TT_C_rbp","cam_TT_C_tbp","cam_TT_D_0","cam_TT_D_rbp","cam_TT_D_tbp","cam_TT_AB_0","cam_TT_AB_rbp","cam_TT_AB_tbp","cam_TT_AC_0","cam_TT_AC_rbp","cam_TT_AC_tbp","cam_TT_AD_0","cam_TT_AD_rbp","cam_TT_AD_tbp","cam_TT_BC_0","cam_TT_BC_rbp","cam_TT_BC_tbp","cam_TT_BD_0","cam_TT_BD_rbp","cam_TT_BD_tbp","cam_TT_CD_0","cam_TT_CD_rbp","cam_TT_CD_tbp","cam_TT_ABC_0","cam_TT_ABC_rbp","cam_TT_ABC_tbp","cam_TT_ABD_0","cam_TT_ABD_rbp","cam_TT_ABD_tbp","cam_TT_ACD_0","cam_TT_ACD_rbp","cam_TT_ACD_tbp","cam_TT_BCD_0","cam_TT_BCD_rbp","cam_TT_BCD_tbp","cam_TT_ABCD_0","cam_TT_ABCD_rbp","cam_TT_ABCD_tbp","ca","rbp","tbp"]
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
