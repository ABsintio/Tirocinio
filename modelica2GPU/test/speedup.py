import json
import matplotlib.pyplot as plt 
import numpy as np 
import sys


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


if __name__ == '__main__':
    json_f = sys.argv[-1]
    plotgen = PlotGenerator(json_f)
    plotgen.load_wsimtime()
    plotgen.speedup_T1w10000_on_T10000w10000()