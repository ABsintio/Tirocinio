import json
import matplotlib.pyplot as plt 
import numpy as np 
import sys
import os
import os.path as path
import re


class PlotGenerator:
    def __init__(self, json_file, save_fig=True):
        self.tot = json.load(open(json_file, mode="r"))
        self.save_fig = save_fig

    def load_wsimtime(self):
        data = dict()
        for k, v in self.tot.items():
            if v['simulations (msec)']:
                data[k] = v
        self.data = data

    def speedup_T10000_on_T1(self):
        sp = []
        id_test = []
        for k, v in self.data.items():
            id_test.append(int(k))
            sp.append(v['simulations (msec)'][-1][-1] / v['simulations (msec)'][0][-1])

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

    def speedup_T1w10000_on_T10000w10000(self):
        sp = []
        id_test = []
        for k, v in self.data.items():
            id_test.append(int(k))
            sp.append(v['simulations (msec)'][0][-1] * 10**4 / v['simulations (msec)'][-1][-1])

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

    def getnumvars(self):
        vars = []
        for v in self.data.values():
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


if __name__ == '__main__':
    json_f = sys.argv[-1]
    plotgen = PlotGenerator(json_f)
    plotgen.load_wsimtime()
    # plotgen.speedup_T10000_on_T1()
    # plotgen.speedup_T1w10000_on_T10000w10000()
    # plotgen.vars_distribution()
    # plotgen.vars_histogram()