import json
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt 
import numpy as np 
import sys
import os
import os.path as path
import re


class PlotGenerator:
    def __init__(self, json_file, rmse_file, save_fig=True, load_rmse=True):
        self.tot = json.load(open(json_file, mode="r"))
        self.json_file = json_file
        self.save_fig = save_fig
        self.rmse_file = rmse_file
        self.data = self.load_wsimtime()
        
        if load_rmse:
            self.load_rmse()

    def load_wsimtime(self):
        data = dict()
        for k, v in self.tot.items():
            if v['simulations (msec)']:
                data[k] = v
        return data

    def load_rmse(self):
        rmses = dict()
        with open(self.rmse_file, mode="r") as f:
            i = 0
            while (l := f.readline()):
                splitted_l = l.split(" ")
                model_name = splitted_l[0]
                rmse = float(splitted_l[-1][:-1])

                if rmse > 30:
                    rmse /= 400

                w_dir = " ".join(splitted_l[1:-1])
                rmses[i] = (model_name, w_dir, rmse)
                i += 1

        self.update_tot(rmses)

    def update_tot(self, rmses):
        for _, v in self.tot.items():
            for k1, v1 in rmses.items():
                if v['model'] == v1[0] and v['w_dir'] == v1[1]:
                    v.update({'rmse': v1[2]})
                    break

    def update_json(self):
        with open(self.json_file, mode="w") as f:
            json.dump(self.tot, f)

    def get_speedup1(self):
        sp = []
        id_test = []

        for k, v in self.data.items():
            id_test.append(int(k))
            sp.append(v['simulations (msec)'][-1][-1] / v['simulations (msec)'][0][-1])

        return sp, id_test

    def speedup_T10000_on_T1(self):
        sp, id_test = self.get_speedup1()

        asc_media = []
        for i, _ in enumerate(id_test):
            asc_media.append(sum(sp[:i]) / (i + 1))

        speedup = np.array(sp)
        plt.figure(figsize=[15.0, 8.0])
        plt.scatter(id_test, speedup, marker="o", label="T(10000)/T(1)")
        plt.plot(id_test, asc_media, label="Tmedio", color="orange")
        plt.xlabel("ID Test")
        plt.ylabel("Speedup")
        plt.legend(loc="upper left")
        if self.save_fig:
            plt.savefig("T10000_on_T1.png")
        plt.show()

    def get_speedup2(self):
        sp = []
        id_test = []

        for k, v in self.data.items():
            id_test.append(int(k))
            sp.append(v['simulations (msec)'][0][-1] * 10**4 / v['simulations (msec)'][-1][-1])

        return sp, id_test

    def speedup_T1w10000_on_T10000w10000(self):
        sp, id_test = self.get_speedup2()

        asc_media = []
        for i, _ in enumerate(id_test):
            asc_media.append(sum(sp[:i]) / (i + 1))

        speedup = np.array(sp)
        plt.figure(figsize=[15.0, 8.0])
        plt.scatter(id_test, speedup, marker="o", label="T10000(1)/T10000(10000)")
        plt.plot(id_test, asc_media, label="Tmedio", color="orange")
        plt.xlabel("ID Test")
        plt.ylabel("Speedup")
        plt.legend(loc="upper left")
        if self.save_fig:
            plt.savefig("T1w10000_on_T10000w10000.png")
        plt.show()

    def getnumvars(self, total=False):
        vars = []
        lists = self.data if not total else self.tot
        for v in lists.values():
            modelname = v['model']
            wdir = v['w_dir']
            cu_path = path.join(wdir, f"{modelname}_MPGOS")

            with open(f"{cu_path}/{modelname}.cu", mode="r") as f:
                file_content = f.read()

                re_SD = re.compile("const int SD   = \d+")
                re_NA = re.compile("const int NA   = \d+")
                re_NIA = re.compile("const int NIA  = \d+")
                match_SD = re.findall(re_SD, file_content)[0]
                match_NA = re.findall(re_NA, file_content)[0]
                match_NIA = re.findall(re_NIA, file_content)[0]

                tot_var = int(match_SD.split()[-1]) + \
                          int(match_NA.split()[-1]) + \
                          int(match_NIA.split() [-1])

                vars.append(tot_var)

        return vars

    def vars_distribution(self):
        num_vars = np.array(self.getnumvars())
        id_tests = np.array(list(map(int, self.data.keys())))

        plt.figure(figsize=[15.0, 8.0])
        plt.scatter(id_tests, num_vars, marker="o", label="Number of variables distribution")
        plt.xlabel("Test ID")
        plt.ylabel("Variables number")
        plt.legend(loc="upper left")

        if self.save_fig:
            plt.savefig("Variables_Number.png")

        plt.show()

    def vars_histogram(self):
        lista = self.getnumvars()
        num_vars = np.array(lista)

        plt.figure(figsize=[15.0, 8.0])
        plt.hist(num_vars, bins='auto', color="g", label="N° vars frequency", density=True)
        plt.xlabel("Variable number")
        plt.ylabel("Frequency")
        plt.legend(loc="upper left")

        if self.save_fig:
            plt.savefig("variables_number_frequency.png")

        plt.show()

    def speedup1_and_variables(self):
        num_vars = np.array(self.getnumvars())
        sp1, _ = self.get_speedup1()

        plt.figure(figsize=[15.0, 8.0])
        plt.scatter(num_vars, sp1)
        plt.title("Speedup in relazione alla dimensione del sistema")
        plt.xlabel("Dimensione del test (in variabili)")
        plt.ylabel("Speedup")

        if self.save_fig:
            plt.savefig("speedup1_and_variables.png")

        plt.show()

    def speedup2_and_variables(self):
        num_vars = np.array(self.getnumvars())
        sp1, _ = self.get_speedup2()

        plt.figure(figsize=[15.0, 8.0])
        plt.scatter(num_vars, sp1)
        plt.title("Speedup in relazione alla dimensione del sistema")
        plt.xlabel("Dimensione del test (in variabili)")
        plt.ylabel("Speedup")

        if self.save_fig:
            plt.savefig("speedup2_and_variables.png")

        plt.show()

    def getRMSE(self):
        return [v['rmse'] for v in self.tot.values()]

    def rmse_on_variables(self):
        num_vars = np.array(self.getnumvars(total=True))
        print(len(num_vars))
        rmses = np.array(self.getRMSE())
        print(len(rmses))

        plt.figure(figsize=[15.0, 8.0])
        plt.scatter(num_vars, rmses)
        plt.title("Dipendenza errore-dimensione del sistema")
        plt.xlabel("Dimensione del test (in variabili)")
        plt.ylabel("RMSE")

        if self.save_fig:
            plt.savefig("speedup2_and_variables.png")

        plt.show()

    def save_rmse(self, outputfile="rmse.dat"):
    	with open(outputfile, mode="w") as f:
    		f.write("\n".join([str(x) for x in self.getRMSE()]))

    def save_speedup1(self, outputfile="speedup1.dat"):
    	with open(outputfile, mode="w") as f:
    		f.write("\n".join([str(x) for x in self.get_speedup1()[0]]))



if __name__ == '__main__':
    if len(sys.argv) != 3:
        raise ValueError("Esecuzione: python3 speedup.py [json_file] [rmse_file]")

    json_f = sys.argv[-2]
    rmse_f = sys.argv[-1]

    plotgen = PlotGenerator(json_f, rmse_f, save_fig=False, load_rmse=False)
    # plotgen.update_json()
    # plotgen.speedup_T10000_on_T1()
    # plotgen.speedup_T1w10000_on_T10000w10000()
    # plotgen.vars_distribution()
    # plotgen.vars_histogram()
    # plotgen.speedup1_and_variables()
    # plotgen.speedup2_and_variables()
    # plotgen.rmse_on_variables()
    # plotgen.save_rmse()
    # plotgen.save_speedup1()
    plotgen.getnumvars()