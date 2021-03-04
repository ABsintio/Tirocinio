import numpy as np
import pandas as pd
import os
from rich.table import Table
from rich.console import Console
import math


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

    console = Console()

    def __init__(self, file):

        self.table = Table(header_style="bold green")

        with open(file, mode="r") as stream:
            model_names, directorys = [], []
            lines = stream.readlines()
            j = 0
            for i in range(0, len(lines), 2):
                if os.path.isfile(os.path.join(lines[i + 1][:-1], "DenseOutput_0.txt")):
                    directorys.append([lines[i][:-1], lines[i + 1][:-1]])
                    model_names.append(lines[i + 1].split("/")[-1][:-7])
            self.dir_list = dict(zip(model_names, directorys))

        self.table.add_column("MODEL NAME", style="green")
        self.table.add_column("DIRECTORY MODEL")
        self.table.add_column("TOTAL MSE", style="bold blue")
        self.table.add_column("STATE", style="bold red")

        self.results = []


    @staticmethod
    def calculate_RMSE(times, times_csv, expected_values, given_values, n):
        rmse = 0
        j = 1
        for i in range(n):
            value2 = np.interp(times[i], times_csv, expected_values)
            value1 = given_values[i]
            value = ((value2 - value1) / (abs(value2) + 1e-3))**2
            rmse += value
        return rmse / n

    @staticmethod
    def calculate_RMSEtot(times, times_csv, X_bar, X, n, m):
        rmse_tot = 0
        for j in range(m - 1):
            result = math.sqrt(Validation.calculate_RMSE(times, times_csv, X_bar[:, j + 1], X[:, j + 1], n))
            rmse_tot += (result)
        return rmse_tot / m

    @staticmethod
    def validate_model(txt_file, csv_file):
        npvalues_txt = np.array(get_values_from_txt(txt_file))
        npvalues_csv = np.array(get_value_from_csv(csv_file))

        times_txt = npvalues_txt[:, 0]
        times_csv = npvalues_csv[:, 0]

        m = len(npvalues_txt[0])
        n = len(times_txt)

        return Validation.calculate_RMSEtot(times_txt, times_csv, npvalues_csv, npvalues_txt, n, m)

    def validate(self):
        for model_name, dirs in self.dir_list.items():
            csv_dir, txt_dir = dirs
            csv_file = os.path.join(csv_dir, f"{model_name}_res.csv")
            txt_file = os.path.join(txt_dir, "DenseOutput_0.txt")
            mse_tot = Validation.validate_model(txt_file, csv_file)
            self.table.add_row(model_name, csv_dir, "%.18f" % mse_tot, str(mse_tot < 1.0))
            self.results.append((model_name, csv_dir, "%.18f" % mse_tot, str(mse_tot < 1.0)))
            print(model_name, csv_dir, mse_tot)

    def build_table_from_file(self, result_file):
        lista = []
        with open(result_file, mode="r") as stream:
            while (line := stream.readline()):
                splitted_line = line.split(" ")
                model_name = splitted_line[0]
                directory = " ".join(splitted_line[1:-1])
                tot_mse = splitted_line[-1]
                state = str(float(tot_mse) < 1)
                self.table.add_row(model_name, directory, tot_mse, state)
                self.results.append((model_name, directory, tot_mse, state))

    def show_table(self):
        self.console.print(self.table)

    def get_percentage(self):
        tot = len(self.results)
        true = len(list(filter(lambda x: x[-1] == "True", self.results)))
        return 100 * true / tot, tot, true

    def show_percentage(self):
        percentage, tot, true = self.get_percentage()
        self.console.print(f"Percentuale di validità: [bold green]{percentage}[/bold green]")
        self.console.print(f"Numero di test totali: [bold blue]{tot}[/bold blue]")
        self.console.print(f"Numero di test con esito positivo: [bold green]{true}[/bold green]")
        self.console.print(f"Numero di test con esito negativo: [bold red]{tot - true}[/bold red]")


if __name__ == "__main__":
    v = Validation("dir.txt")
    v.validate()
    #v.build_table_from_file("result.txt")
    #v.show_table()
    #v.show_percentage()
