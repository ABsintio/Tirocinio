
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
variables_to_plot = ["s_0001","s_0007","s_0008","s_0009","s_0010","s_0015","s_0017","s_0018","s_0021","s_0022","s_0031","s_0040","s_0042","s_0046","s_0052","s_0055","s_0058","s_0064","s_0069","s_0078","s_0079","s_0080","s_0083","s_0088","s_0090","s_0118","s_0120","s_0122","s_0124","s_0128","s_0145","s_0146","s_0149","s_0150","s_0158","s_0163","s_0167","s_0170","s_0180","s_0181","s_0183","s_0185","s_0193","s_0195","s_0206","s_0209","s_0212","s_0215","s_0216","s_0217","s_0218","s_0225","s_0234","s_0238","s_0247","s_0254","s_0257","s_0261","s_0264","s_0265","s_0267","s_0268","s_0297","s_0301","s_0302","s_0303","s_0304","s_0306","s_0307","s_0309","s_0315","s_0316","s_0317","s_0318","s_0319","s_0320","s_0325","s_0328","s_0330","s_0331","s_0333","s_0334","s_0335","s_0356","s_0366","s_0369","s_0374","s_0380","s_0386","s_0393","s_0397","s_0400","s_0410","s_0416","s_0419","s_0427","s_0430","s_0434","s_0438","s_0439","s_0446","s_0455","s_0458","s_0463","s_0468","s_0469","s_0470","s_0481","s_0485","s_0500","s_0501","s_0507","s_0511","s_0514","s_0521","s_0529","s_0530","s_0532","s_0533","s_0537","s_0539","s_0545","s_0549","s_0553","s_0554","s_0557","s_0561","s_0562","s_0564","s_0566","s_0569","s_0574","s_0582","s_0591","s_0593","s_0596","s_0601","s_0605","s_0615","s_0616","s_0619","s_0622","s_0624","s_0627","s_0632","s_0635","s_0641","s_0650","s_0657","s_0659","s_0663","s_0669","s_0689","s_0692","s_0706","s_0710","s_0712","s_0731","s_0732","s_0734","s_0735","s_0740","s_0743","s_0749","s_0752","s_0755","s_0798","s_0800","s_0801","s_0805","s_0816","s_0824","s_0828","s_0847","s_0850","s_0859","s_0861","s_0863","s_0867","s_0873","s_0877","s_0881","s_0886","s_0887","s_0888","s_0889","s_0894","s_0899","s_0905","s_0907","s_0911","s_0915","s_0916","s_0917","s_0919","s_0920","s_0925","s_0929","s_0933","s_0936","s_0939","s_0942","s_0943","s_0949","s_0952","s_0955","s_0960","s_0963","s_0968","s_0977","s_0987","s_1000","s_1005","s_1011","s_1013","s_1020","s_1028","s_1044","s_1048","s_1051","s_1052","s_1053","s_1060","s_1066","s_1070","s_1071","s_1073","s_1080","s_1082","s_1087","s_1091","s_1096","s_1117","s_1122","s_1132","s_1140","s_1151","s_1154","s_1155","s_1156","s_1160","s_1170","s_1187","s_1207","s_1215","s_1219","s_1225","s_1226","s_1228","s_1233","s_1243","s_1257","s_1258","s_1277","s_1283","s_1290","s_1293","s_1304","s_1306","s_1315","s_1325","s_1327","s_1329","s_1334","s_1338","s_1342","s_1347","s_1349","s_1355","s_1379","s_1399","s_1411","s_1415","s_1417","s_1430","s_1447","s_1455","s_1456","s_1457","s_1458","s_1517","s_1521","s_0763_b","s_1434_b","species_1","s_0431_b","s_0464_b","s_0472_b","s_0547_b","s_0651_b","s_0766_b","s_1162_b","s_1209_b","s_1339_b","s_1348_b"]
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
