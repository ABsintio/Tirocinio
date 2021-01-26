
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
variables_to_plot = ["AcanmRNA","ADAMTS5","AGEprod","Alk1","Alk1_Alk5","Alk5","Alk5_dimer","Bax","Bax_Bcl2","Bax_Bcl2_Beclin","Bax_Bcl2_Beclin_I","Bcl2","Bcl2_Beclin","Bcl2_Beclin_I","Beclin","Beclin_I","Caspase_A","Caspase_I","Col2mRNA","DamP","IkB","IkB_NFkB","IL1","Lys_A","Lys_I","MMP13","MMP2","NatP","NFkB","NFkB_P","p38","p38_P","proMMP13","proMMP2","RAGE","ROS","Runx2_A","Runx2_I","Smad1","Smad1_P","Smad1_P_Smad4","Smad2","Smad2_P","Smad2_P_Smad4","Smad4","Smad7","SOD","Sox9","Sox9_A","Sox9mRNA","Tgfb_A","Tgfb_Alk1_Alk5","Tgfb_Alk1_Alk5_Smad7","Tgfb_Alk5_dimer","Tgfb_Alk5_dimer_Smad7","AggFrag","Aggrecan","Aggrecan_Collagen2","ColFrag","Collagen2","Integrin","Tgfb_I","Sink","Source","IntegrinCount"]
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
