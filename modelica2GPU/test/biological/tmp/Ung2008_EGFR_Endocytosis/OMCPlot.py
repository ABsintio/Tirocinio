
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
variables_to_plot = ["species_0","species_1","species_2","species_3","species_4","species_5","species_6","species_7","species_8","species_9","species_10","species_11","species_12","species_13","species_14","species_15","species_16","species_17","species_18","species_19","species_20","species_21","species_22","species_23","species_24","species_25","species_26","species_27","species_28","species_29","species_30","species_31","species_32","species_33","species_34","species_35","species_36","species_37","species_38","species_39","species_40","species_41","species_42","species_43","species_44","species_45","species_46","species_47","species_48","species_49","species_50","species_51","species_52","species_53","species_54","species_55","species_56","species_57","species_58","species_59","species_60","species_61","species_62","species_63","species_64","species_65","species_66","species_67","species_68","species_69","species_70","species_71","species_72","species_73","species_74","species_75","species_76","species_77","species_78","species_79","species_80","species_81","species_82","species_83","species_84","species_85","species_86","species_87","species_88","species_89","species_90","species_91","species_92","species_93","species_94","species_95","species_96","species_97","species_98","species_99","species_100","species_101","species_102","species_103","species_104","species_105","species_106","species_107","species_108","species_109","species_110","species_111","species_112","species_113","species_114","species_115","species_116","species_117","species_118","species_119","species_120","species_121","species_122","species_123","species_124","species_125","species_126","species_127","species_128","species_129","species_130","species_131","species_132","species_133","species_134","species_135","species_136","species_137","species_138","species_139","species_140","species_141","species_142","species_143","species_144","species_145","species_146","species_147","species_148","species_149","species_150","species_151","species_152","species_153","species_154","species_155","species_156","species_157","species_158","species_159","species_160","species_161","species_162","species_163","species_164","species_165","species_166","species_167","species_168","species_169","species_170","species_171","species_172","species_173","species_174","species_175","species_176","species_177","species_178","species_179","species_180","species_181","species_182","species_183","species_184","species_185","species_186","species_187","species_188","species_189","species_190","species_191","species_192","species_193"]
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
