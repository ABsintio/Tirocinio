import numpy as np
from scipy.stats import norm
import pandas as pd 
import os

def get_values_from_txt(filename):
    values = []
    with open(filename, mode="r", encoding="utf-8") as f:
	    start = False
	    while (line := f.readline()):
	        if start:
	            new_line = line.strip().replace('\n', '')
	            values.append([float(x.strip()) for x in new_line.split(",")])
	        if "Time series" in line:
	            start = True

    return values


def get_value_from_csv(filename):
    return pd.read_csv(filename).values


class Validation:

    FILE = "giusti.txt"
    N_MODEL = 410

    def __init__(self):
        
        self.data = []
        self.data_dict = dict()
        with open(self.FILE, mode="r") as f:
            tmp_data = []
            while (line := f.readline()):
                mse_tot = float(line[:-1].split(" ")[-1])
                model_name = line.split(" ")[0]
                directory = " ".join(line.split(" ")[1:-1])
                self.data.append(mse_tot)
                self.data_dict[model_name] = (directory, mse_tot)
                tmp_data.append(mse_tot)
            self.data = np.array(tmp_data)
    
    def gauss_validation(self):
        mu = np.sum(self.data) / self.N_MODEL
        mu_array = np.empty(self.N_MODEL)
        mu_array.fill(mu)
        sigma_2 = np.sum((self.data - mu_array)**2) / self.N_MODEL
        sigma = sigma_2**(0.5)
        print((1.0 - mu) / (sigma_2**(0.5)))
        print(sigma, " sigma")
        print(mu, " mu")
        print(mu - sigma, " mu - sigma")
        print(norm.cdf(10e4, loc=mu, scale=sigma_2))


v = Validation()
v.gauss_validation()
