
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
variables_to_plot = ["mwf626e95e_543f_41e4_aad4_c6bf60ab345b","mwbbbce920_e8dd_4320_9386_fc94bfb2fc99","mw810ff751_fa4e_4143_bd50_169b3e325e1e","mw114aa90f_5f5b_4fe8_9406_361c8489b6a1","mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc","mw03db56ac_8dc6_4931_ae82_fef706d2ee3d","mwf345ed7a_0622_403c_b816_c8749a2c9ded","mw1da111f2_a036_4392_8512_015005bdcbb7","mw9947742a_0e4b_4636_9a4b_b6eef2a8f6ac","mw80848184_e2dd_47ce_86d7_7a21479342bd","mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a","mw4638f126_8cb8_4021_ab41_6ae195743ba0","mw10315fa3_6f13_4618_bda8_a8694bd3c374","mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1","mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83","mw0eb6c959_d408_45a0_a450_928b8c5876bb","mw42054cd7_17af_46da_970c_7f99151906ad","mw39c2e431_fdc3_4964_be29_6ca856620b1b","mw2e464cf3_a09c_4b7c_9f3c_06720016a48e","mw36ea78c1_ed71_4def_96d3_857a442d7195","mw147d30ec_478e_4090_b496_128a131d29eb","mwab41493c_6349_45f1_a226_3030cfed0e06","mwf405687b_7401_44ec_a0d6_4a2b35c13e8a","mw3667a5e1_02c9_44a0_acb4_b0431faa822d","mw772cbf20_3fc1_4800_ae59_77884f1ae333","mw2ba2b802_9f07_4f4d_94c6_24c8de1a95cf","mw7becb5fe_8da8_4285_a821_0d77ad811b62","mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca","mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9","mw6cce2109_0e32_4dd9_98ec_41173e8ef07d","mw2b255f94_8018_4b99_bde8_918eeac45446","mw48867e93_f170_44e8_ac7a_185b23e1bf3b","mwd31f52cc_04e7_40e0_885f_c7b2d9e62215","mw2c9b0499_3325_4394_8af3_bbf653a944a0","mwd65b5b39_dc1b_4e77_a999_67277a880e5e","mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3","mwf7796221_1fea_4274_a93e_c00adbf5778c","mw5d764bb8_5693_4ac8_9557_f65992cc5eb0","mwedc1bc00_adf7_4144_a1c2_7dc1a9565dc2","mwbc2f5464_81e5_43fd_8b39_f5a2756af72f"]
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
