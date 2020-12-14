
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
variables_to_plot = ["APCC","APCCYCdk1Y00YCdk1Y01YInt","APCCYCdk1Y10YCdk1Y11YInt","APCCYCdk2Y000YCdk2Y002YInt","APCCYCdk2Y010YCdk2Y012YInt","APCCYCdk2Y100YCdk2Y102YInt","APCCYCdk2Y110YCdk2Y112YInt","APCCYCyclinAYInt","APCCYEmi1","Cdk1Y00","Cdk1Y01","Cdk1Y10","Cdk1Y11","Cdk1Y11YpRbY10YpRbY20YInt","Cdk1Y11YpRbY11YpRbY21YInt","Cdk2Y000","Cdk2Y001","Cdk2Y002","Cdk2Y010","Cdk2Y011","Cdk2Y011YpRbY10YpRbY20YInt","Cdk2Y011YpRbY11YpRbY21YInt","Cdk2Y012","Cdk2Y012YpRbY10YpRbY20YInt","Cdk2Y012YpRbY11YpRbY21YInt","Cdk2Y100","Cdk2Y101","Cdk2Y102","Cdk2Y110","Cdk2Y111","Cdk2Y112","Cdk4Y00","Cdk4Y01","Cdk4Y01YpRbY00YpRbY10YInt","Cdk4Y01YpRbY01YpRbY11YInt","Cdk4Y10","Cdk4Y11","CyclinA","CyclinD","CyclinE","E2F","Emi1","p27","pRbY00","pRbY01","pRbY10","pRbY11","pRbY20","pRbY21","totalYCyclinYD","totalYCyclinYE","totalYCyclinYA","totalYp27","hypophosphorylatedYpRb","hyperphosphorylatedYpRb","totalYEmi1","activeYCdk2"]
species_tuple = [(idx, specie) for idx, specie in enumerate(csv_data.head(0)) if specie in variables_to_plot and specie != "time"]

# Creiamo un array numpy per salvare i dati estrapolati dal CSV
data_numpy = np.array(csv_data)

# Prendiamo la colonna del tempo
time = data_numpy[:, 0]

# Prendiamo i valori a tuple di quattro i quali formeranno un singolo plot
plot_number = 1
for i in range(0, len(species_tuple), 4):
    current_vars = species_tuple[i:i+4]
    plt.figure()
    for j, var in current_vars:
        plt.plot(time, data_numpy[:, j], marker="_", label=var)
    plt.xlabel("Time")
    plt.legend(loc="upper left")
    plt.savefig("OMCPlot" + str(plot_number) + ".png")
    plot_number += 1
