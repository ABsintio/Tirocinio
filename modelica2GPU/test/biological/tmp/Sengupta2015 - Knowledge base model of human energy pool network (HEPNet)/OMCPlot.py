
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
variables_to_plot = ["s4","s136","s188","s253","s49","s308","s335","s13","s201","s199","s294","s292","s297","s298","s337","s248","s362","s94","s284","s283","s26","s7","s244","s58","s6","s187","s388","s267","s11","s44","s344","s193","s79","s249","s45","s91","s90","s200","s363","s36","s43","s86","s88","s10","s34","s81","s50","s190","s185","s334","s67","s351","s381","s93","s355","s333","s357","s28","s9","s252","s307","s189","s296","s95","s56","s52","s16","s322","s327","s25","s64","s347","s32","s329","s361","s255","s250","s203","s251","s336","s197","s198","s51","s293","s340","s378","s18","s341","s379","s71","s302","s306","s305","s48","s241","s352","s35","s186","s234","s85","s195","s77","s40","s27","s286","s287","s374","s377","s269","s353","s356","s53","s3","s285","s73","s31","s247","s194","s365","s87","s82","s183","s325","s330","s265","s258","s263","s262","s238","s350","s92","s38","s342","s54","s2","s126","s41","s33","s237","s349","s122","s109","s112","s111","s113","s110","s115","s116","s114","s117","s120","s119","s121","s127","s367","s15","s22","s37","s125","s19","s129","s371","s42","s68","s66","s128","s69","s131","s370","s65","s72","s80","s130","s70","s133","s369","s83","s96","s89","s132","s97","s135","s368","s84","s99","s100","s134","s98","s101","s104","s103","s105","s102","s107","s108","s106","s366","s332","s24","s23","s39","s343","s12","s254","s57","s5","s17","s21","s291","s14","s364","s354","s326","s324","s321","s328","s323","s63","s345","s47","s46","s346","s348","s192","s182","s181","s8","s259","s300","s301","s358","s389","s29","s30","s75","s256","s74","s124","s123","s400"]
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
