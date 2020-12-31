import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument("-n", "--dimension", help="La dimensione del sistema", type=int)
parser.add_argument("-c", "--csv", help="Path relativo o assoluto del file CSV contenente i dati")
parser.add_argument("-m", "--model", help="Il nome del modello")
args = parser.parse_args()
csv_file = args.csv
dimension = args.dimension
model_name = args.model

# Apriamo e leggiamo il CSV in input
csv_data = pd.read_csv(csv_file)

try:
    os.mkdir(f"OMCPlot_{model_name}")
except Exception:
    pass
os.chdir(f"OMCPlot_{model_name}")

head = [(x, y) for x, y in enumerate(np.array(csv_data.head(0).columns)[1:dimension + 1])]
data = np.array(csv_data)

times = data[:, 0]

plot_number = 1
for i in range(0, dimension, 4):
    current_vars = head[i:i+4]
    plt.figure(figsize=[15.0, 8.0])
    for idx, var in current_vars:
        plt.plot(times, data[:, idx], marker="_", label=var)
    plt.xlabel("Time")
    plt.legend(loc="upper left")
    plt.savefig("OMCPlot" + str(plot_number) + ".png")
    plot_number += 1

os.chdir("..")