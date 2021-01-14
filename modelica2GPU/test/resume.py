import xml.etree.ElementTree as ET
import os
import os.path as path
from rich.table import Table
from rich.console import Console
import csv
import math
import matplotlib.pyplot as plt
import numpy as np
import pandas


console = Console()


class Test:
    def __init__(self, test_id, modelname, wdir, transl, transl_time, mpgos_comp, sim_descr, results, sim_result, errors):
        self.test_id = test_id
        self.modelname = modelname
        self.wdir = wdir
        self.transl = transl
        self.transl_time = transl_time
        self.mpgos_compilation = mpgos_comp
        self.simulation_description = sim_descr
        self.results = results
        self.sim_result = sim_result
        self.errors = errors
        self.n_var = self.get_n_var()
    
    def get_n_var(self):
        n_var = 0
        with open(path.join(self.wdir, f"{self.modelname[:-3]}_MPGOS/{self.modelname[:-3]}.cu")) as stream:
            while (line := stream.readline()):
                if "const int SD" in line or "const int NA" in line or "const int NIA" in line:
                    n_var += int(line.split("=")[-1][1:-2])
        return n_var

    @staticmethod
    def mul_vel(results):
        return float(results[-1][1][:-2]) / float(results[-1][2][:-2])

    def get_printable(self):
        return [self.test_id, self.modelname, self.wdir, 
                self.transl, self.transl_time, self.mpgos_compilation,
                self.simulation_description, str(self.mul_vel(self.results)) if self.results else "NaN", 
                self.sim_result, str(self.n_var), self.errors]

    def is_success(self):
        return self.sim_result == "Success"

    @staticmethod
    def test_set_by_nvar(tests, start, n_var):
        return list(filter(lambda x: start <= x.n_var <= n_var, tests))

    @staticmethod
    def calculate_percentage(tests):
        nsuccess = 0
        nfailed = 0
        for test in tests:
            if test.is_success():
                nsuccess += 1
            else:
                nfailed += 1
        return str(nsuccess), str(nfailed), "%.3f" % (nsuccess * 100 / (nsuccess + nfailed))


class XMLParser:

    XML_FILE = "tests.xml"

    def __init__(self):
        self.xml_root = ET.parse(self.XML_FILE).getroot()
        self.tests = []
    
    def parseXML(self):
        tests = []
        for test in list(self.xml_root):
            description_succ_transl = "" if not 'description' in test[2].attrib.keys() else test[2].attrib['description']
            simulation_description = test[5].attrib['description'] if 'description' in test[5].attrib.keys() else ""
            args = [
                test.attrib['id'],  # numero del test
                test[0].attrib['value'],  # nome del modello
                test[1].attrib['value'],  # nome della directory di lavoro
                test[2].attrib['value'],  # successful Translation tag value
                test[3].attrib['value'],  # Tempo di traduzione
                test[4].attrib['value'],  # compilazione corretta ?
                simulation_description,  # Descrizione di alcuni dati di simulazione
                [(x.attrib['value'], x.attrib['cpu'], x.attrib['gpu']) for x in list(test[5])],  # Tempi di simulazione
                test[6].attrib['value'],  # risultato della simulazione
                description_succ_transl
            ]

            test_obj = Test(*args)
            tests.append(test_obj)
        
        self.tests = tests
    
    def get_test_resume_table_txt(self):
        table = Table(show_header=True, header_style="bold green")
        table.add_column("TEST ID", style="bold green")
        table.add_column("MODELNAME", style="bold green")
        table.add_column("WORKING DIR", style="bold green")
        table.add_column("TRANSLATION", style="bold green")
        table.add_column("TRANSLATION TIME", style="bold green")
        table.add_column("MPGOS COMPILATION", style="bold green")
        table.add_column("SIM. DESCRIPTION", style="bold green")
        table.add_column("x VEL (GPU / CPU)", style="bold green")
        table.add_column("SIM. RESULT", style="bold green")
        table.add_column("N. VARIABLES", style="bold green")
        table.add_column("ERROR", style="bold green")

        for test in self.tests:
            table.add_row(*test.get_printable())

        console.print(table)

    def get_resume_csv(self):
        with open("resume.csv", mode="w") as stream_csv:
            fieldnames = ["TEST ID", "MODELNAME", "WORKING DIR", 
                          "TRANSLATION", "TRANSLATION TIME", "MPGOS COMPILATION",
                          "SIM. DESCRIPTION", "x VEL (GPU / CPU)", "SIM. RESULT", 
                          "N. VARIABLES", "ERROR"]
            writer = csv.DictWriter(stream_csv, fieldnames=fieldnames)
            writer.writeheader()
            for test in self.tests:
                row = dict(zip(fieldnames, test.get_printable()))
                writer.writerow(row)

    def get_percentage_table_txt(self):
        vars_leq10 = Test.test_set_by_nvar(self.tests, 0, 10)
        vars_leq50 = Test.test_set_by_nvar(self.tests, 11, 50)
        vars_leq100 = Test.test_set_by_nvar(self.tests, 51, 100)
        vars_leq500 = Test.test_set_by_nvar(self.tests, 101, 500)
        vars_leqInf = Test.test_set_by_nvar(self.tests, 501, math.inf)

        table = Table(show_header=True, header_style="bold green")
        table.add_column("N. VAR", justify="center")
        table.add_column("N. SUCCESS", justify="center")
        table.add_column("N. FAILED", justify="center")
        table.add_column("%", style="bold red", justify="center")

        table.add_row("<= 10", *Test.calculate_percentage(vars_leq10))
        table.add_row("10 < x <= 50", *Test.calculate_percentage(vars_leq50))
        table.add_row("50 < x <= 100", *Test.calculate_percentage(vars_leq100))
        table.add_row("100 < x <= 500", *Test.calculate_percentage(vars_leq500))
        table.add_row("> 500", *Test.calculate_percentage(vars_leqInf))
        table.add_row("all", *Test.calculate_percentage(self.tests))

        console.print(table)

    def get_percentage_without_range_table_txt(self):
        vars_leq10 = Test.test_set_by_nvar(self.tests, 0, 10)
        vars_leq50 = Test.test_set_by_nvar(self.tests, 0, 50)
        vars_leq100 = Test.test_set_by_nvar(self.tests, 0, 100)
        vars_leq500 = Test.test_set_by_nvar(self.tests, 0, 500)

        table = Table(show_header=True, header_style="bold green")
        table.add_column("N. VAR", justify="center")
        table.add_column("N. SUCCESS", justify="center")
        table.add_column("N. FAILED", justify="center")
        table.add_column("%", style="bold red", justify="center")

        table.add_row("<= 10", *Test.calculate_percentage(vars_leq10))
        table.add_row("<= 50", *Test.calculate_percentage(vars_leq50))
        table.add_row("<= 100", *Test.calculate_percentage(vars_leq100))
        table.add_row("<= 500", *Test.calculate_percentage(vars_leq500))
        table.add_row("all", *Test.calculate_percentage(self.tests))

        console.print(table)
    
    def get_percentage_csv(self):
        vars_leq10 = Test.test_set_by_nvar(self.tests, 0, 10)
        vars_leq50 = Test.test_set_by_nvar(self.tests, 11, 50)
        vars_leq100 = Test.test_set_by_nvar(self.tests, 51, 100)
        vars_leq500 = Test.test_set_by_nvar(self.tests, 101, 500)
        vars_leqInf = Test.test_set_by_nvar(self.tests, 501, math.inf)

        with open("percentage.csv", mode="w") as stream_csv:
            fieldnames = ["N. VAR", "N. SUCCESS", "N. FAILED", "%"]
            writer = csv.DictWriter(stream_csv, fieldnames=fieldnames)
            writer.writeheader()
            row = dict(zip(fieldnames, ["<= 10", *Test.calculate_percentage(vars_leq10)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["10 < x <= 50", *Test.calculate_percentage(vars_leq50)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["50 < x <= 100", *Test.calculate_percentage(vars_leq100)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["100 < x <= 500", *Test.calculate_percentage(vars_leq500)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["> 500", *Test.calculate_percentage(vars_leqInf)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["all", *Test.calculate_percentage(self.tests)]))
            writer.writerow(row)

    def get_percentage_without_range_csv(self):
        vars_leq10 = Test.test_set_by_nvar(self.tests, 0, 10)
        vars_leq50 = Test.test_set_by_nvar(self.tests, 0, 50)
        vars_leq100 = Test.test_set_by_nvar(self.tests, 0, 100)
        vars_leq500 = Test.test_set_by_nvar(self.tests, 0, 500)

        with open("percentage_without_range.csv", mode="w") as stream_csv:
            fieldnames = ["N. VAR", "N. SUCCESS", "N. FAILED", "%"]
            writer = csv.DictWriter(stream_csv, fieldnames=fieldnames)
            writer.writeheader()
            row = dict(zip(fieldnames, ["<= 10", *Test.calculate_percentage(vars_leq10)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["<= 50", *Test.calculate_percentage(vars_leq50)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["<= 100", *Test.calculate_percentage(vars_leq100)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["<= 500", *Test.calculate_percentage(vars_leq500)]))
            writer.writerow(row)
            row = dict(zip(fieldnames, ["all", *Test.calculate_percentage(self.tests)]))
            writer.writerow(row)

    def plot_percentage_without_range(self):
        data = pandas.read_csv("percentage_without_range.csv")
        data_np = np.array(data.values)
        plt.figure(figsize=[10.0, 5.0])
        n_vars = np.array(['<= 10', '<= 50', '<= 100', '<= 500', '> 500'])
        plt.plot(n_vars, data_np[:, -1], marker="o", label="% / N.vars")
        plt.ylabel("Percentage of success")
        plt.xlabel("Number of variables")
        plt.legend(loc="upper left")
        plt.savefig("percentage_without_range")
        plt.close()

    def plot_percentage(self):
        data = pandas.read_csv("percentage.csv")
        data_np = np.array(data.values)
        plt.figure(figsize=[10.0, 5.0])
        n_vars = np.array(['<= 10', '10 < x <= 50', '50 < x <= 100', '100 < x <= 500', '> 500'])
        plt.plot(n_vars, data_np[:-1, -1], marker="o", label="% / N.vars")
        plt.ylabel("Percentage of success")
        plt.xlabel("Number of variables")
        plt.legend(loc="upper left")
        plt.savefig("percentage")
        plt.close()

if __name__ == "__main__":
    xmlparser = XMLParser()
    xmlparser.parseXML()
    #xmlparser.get_test_resume_table_txt()
    xmlparser.get_resume_csv()
    xmlparser.get_percentage_table_txt()
    xmlparser.get_percentage_csv()
    xmlparser.plot_percentage()
    xmlparser.get_percentage_without_range_table_txt()
    xmlparser.get_percentage_without_range_csv()
    xmlparser.plot_percentage_without_range()