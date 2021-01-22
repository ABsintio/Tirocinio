
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
variables_to_plot = ["mw4d2e70a7_f499_461d_ae18_bc53b365b091","mw8cc67de0_64e6_428f_ab09_4c2825cc172c","mw6ee00a71_ab68_454b_b1cd_60c1ebd19cfa","mw2dc73059_a841_48d5_b4bd_3ac24d94c42e","mw136c8391_14f4_4a28_83a3_35cc74a2e040","mw7204ab72_2ee5_4b92_b420_2583dacc4343","mw6939cefe_e7ff_4a3f_b45b_a9234d1b5573","mwf8cfed1b_6fcf_4cba_bc30_b44490814a7a","mw702be69a_eb4f_425e_87c7_ef7d85254536","mwbee11634_55df_4a3f_998a_634dfaf46fd7","mw805b55df_cc91_4227_bb52_930e961b682c","mwb71eb539_dca6_47ab_8df5_430d84af0bfb","mwa5d6f7e4_dc4d_4931_91ce_1e78e7b2f195","mw4079e13c_446e_4aa2_9ec4_233583833d02","mwe5fade7d_1715_4bb1_843f_923da8ecddf1","mw262497ec_3d54_4367_bfe3_76a9c57497cb","mw8bffd47e_34de_4738_81bf_7a39a40b3ae8","mw308b75ec_28b7_4d97_92e2_51a8ce04116a","mw75377e12_e23d_44b3_9823_5fac9b23edc8","mw67d0cf04_d6a7_4725_a869_098a96a3350d","mw46ee629a_dd6b_4163_9da1_2614bb1d74bc","mw0be0d193_fd6b_4824_8928_dbade8b5c99c","mw280197c8_98de_43f0_bf01_0f332a1ab689","mw9a5baf6d_0285_4ad3_9499_059c553d9cf6","mw05469f51_73f7_4ba1_9f1a_bce5fea143c2","mwf20834c8_a115_460b_859c_4e3ca1ffd953","mwb4633da9_f9d6_4ad8_a7e5_da075c830e17","mw9bb804c9_3e4e_4684_9f6b_4e6f6706a58e","mw64453fc5_a275_4bba_84f0_2af249b31514","mw323a57b4_8e59_4116_9ad1_fe547b89c858","mw173d8585_5817_4b4c_932a_cf7d673680ac","mw32c21c39_237b_4d4c_bb5d_117cb30ce68a","mw3832f277_aef2_4f1d_87af_abc2a3c1a7d5","mw13651143_feb5_49a5_adab_9105c2647446","mw8a358487_b18b_42df_a646_cd75eb5bfcc2","mwd9e7a9b9_6f1b_4bbc_afa5_6cb192b62ce8","mwfed5a135_c91b_4d20_91b2_3a61723544dd","mw97345a67_a8e8_42aa_8e62_69e9d2b6cf45","mw5c67812a_17f5_43cf_8acb_9bde272c1911","mw1f12e5bc_ebbc_4347_b6b7_5cd1740ac69a","mwda4716f1_ae00_4149_aec3_12531380425a","mw17ae9adc_54ab_407b_a34d_8413a3a10cc6","mwc844b7c0_98f5_4d0d_8f0c_00dfe8b54e6d"]
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
