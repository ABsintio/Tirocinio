import pandas as pd
import numpy as np
import argparse
import matplotlib.pyplot as plt

parser = argparse.ArgumentParser()
parser.add_argument("-c", "--csv", help="Path relativo o assoluto del file CSV contenente i dati", required=True)
args = parser.parse_args()
csv_file = args.csv 

# Apriamo e leggiamo il CSV in input
csv_data = pd.read_csv(csv_file)

# Creiamo un array numpy per salvare i dati estrapolati dal CSV
data = np.array(csv_data)

# Prendo i nomi delle specie da plottare
species_name = csv_data.head(0)[1:] # Da prendere solo un tot

# Prendiamo la colonna del tempo 
time = data[:, 0]

# in un dizionario salviamo tutte le variabili 4a4 con chiave il numero di plot
dic_var = dict()
