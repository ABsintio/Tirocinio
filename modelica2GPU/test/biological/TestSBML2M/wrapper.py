import os
import os.path as osp
import time
import sys 
from functools import wraps
import re

import pandas as pd
import numpy as np 
import xml.etree.ElementTree as ET 
from libsbml import readSBMLFromFile


def estimate_time(f):
    @wraps
    def wrapper(*args, **kargs):
        start = time.time()
        f(*args, **kargs)
        end = time.time()
        print("Tempo totale di traduzione: " + str(end - start))
    return wrapper

class Test:

    __SBML2MOD = "/home/lmriccardo/Scrivania/Tirocinio/modelica2GPU/test/biological/TestSBML2M/SBML2Modelica.py"

    # Variabili "private" costanti
    __CURRENT_DIR    = os.getcwd()
    __SBML_EXECUTION = "python3.9 " + __SBML2MOD + " --sbml {sbml_file} --output {out_dir}"
    
    # Variabili "non private" costanti
    MATCH_EPSILON  = 1e-8
    NEXT_EPSILON   = 1e-9

    def __init__(self, test_dir, current_test_case, output_dir, sbml_lvl, sbml_version):
        # Inizializzo gli attributi standard della classe
        self.working_dir  = test_dir
        self.current_test = osp.join(self.working_dir, current_test_case)
        self.output_dir   = osp.join(self.current_test, output_dir)
        self.setting_file = osp.join(self.current_test, f"{current_test_case}-settings.txt")
        self.model        = osp.join(self.current_test, f"{current_test_case}-model.m")
        self.sbml         = osp.join(self.current_test, f"{current_test_case}-sbml-l{sbml_lvl}v{sbml_version}.xml")
        self.test_id      = current_test_case 

        # Prendo il nome del modello, direttamente dall'SBML
        self.model_name   = readSBMLFromFile(self.sbml).getModel().getName()

        # Prendo la configurazione di simulazione
        self.simul_conf   = self.extract_simul_config()

    def __str__(self):
        return f"Test.{self.test_id} -> " + "{\n\t" + ",\n\t".join([f"{k}: {v}" for k, v in self.__dict__.items()]) + "\n}"

    def extract_simul_config(self):
        # Estraggo la configurazione per la simulazione
        with open(self.setting_file, mode="r") as stream:
            scont = stream.read().splitlines()
        
        start     = scont[0].split()[-1]                                # Prendo il tempo iniziale della simulazione
        horizon   = scont[1].split()[-1]                                # Prendo l'orizzonte della simulazione
        step_size = str(float(horizon) / float(scont[2].split()[-1]))   # Prendo lo step size
        variables = scont[3].replace(" ", "").split(":")[-1].split(",") # Prendo le variabili coinvolte nella simulazione

        # Nel caso in cui variabiles sia una stringa la si trasforma in lista
        if type(variables) is str:
            variables = [variables]
        
        return dict(zip(["start", "horizon", "step_size", "vars"], [start, horizon, step_size, variables]))

    def execute_sbml2modelica(self):
        # Esegue il software di conversione SBML2Modelica, da SBML -> Modelica.
        os.chdir(self.current_test)
        os.system(self.__SBML_EXECUTION.format(sbml_file=self.sbml, out_dir=self.output_dir))
        os.chdir(self.__CURRENT_DIR)

    def compile_modelica(self):
        os.chdir(osp.join(self.output_dir, self.model_name)) # Mi muovo nella cartella dove dovrebbe essere salvato l'output CSV
        os.system('omc build.mos Modelica')                  # Compilo il codice modelica e si crea l'eseguibile per la simulazione

        # Estrapolo le configurazioni della simulazione e la cambio con quella estratta dal settings.txt
        tree  = ET.parse(f'{self.model_name}_init.xml')
        root  = tree.getroot()
        child = list(root)[0]
        child.attrib['stepSize']     = self.simul_conf['step_size']
        child.attrib['stopTime']     = self.simul_conf['horizon']
        child.attrib['startTime']    = self.simul_conf['start']
        child.attrib['outputFormat'] = "csv"
        child.attrib['solver']       = 'euler'
        tree.write(f'{self.model_name}_init.xml')

        # Ritorno indietro di cartella
        os.chdir(self.__CURRENT_DIR)

    def simulate_model(self, clear: bool = True):
        os.chdir(osp.join(self.output_dir, self.model_name))           # Mi muovo nella cartella dove dovrebbe essere salvato l'output CSV
        os.system('./{0} -maxStepSize=0.0001'.format(self.model_name)) # Eseguo la simulazione che genererà il CSV voluto. 

        # Se l'argomento clear è True allora rimuovo tutti i file in eccesso generati dalla compilazione
        if clear:
            os.system("bash clear.sh {0}".format(self.model_name))

        # Ritorno indietro di cartella
        os.chdir(self.__CURRENT_DIR)
    
    def save_result(self):
        os.chdir(osp.join(self.output_dir, self.model_name))
        res    = pd.read_csv("{0}_res.csv".format(self.model_name)) # Carico il CSV del dense-output della simulazione con OpenModelica
        print("CSV loaded ...")

        start     = res['time'][0]                               # Carico il tempo iniziale della simulazione
        end       = res['time'][len(res) - 1]                    # Carico il tempo finale della simulazione
        step_size = float(self.simul_conf['step_size'])          # Carico lo step size dal dict contenente la configurazione di simulazione
        time      = np.arange(start, end + step_size, step_size) # Creo un linspace per il tempo della simulazione
        print("Linspace computed ...")

        to_drop = list() # Inizializzo la lista degli elementi che dovranno essere eliminati dal CSV
        # Riempio la lista to_drop
        for i in range(len(res)):
            if i > 0:
                if abs(res['time'][i - 1] - res['time'][i]) < self.NEXT_EPSILON:
                    to_drop.append(i)
                    continue
            
            found = False
            for val in time:
                if abs(res['time'][i] - val) < self.MATCH_EPSILON:
                    found = True
                    break
            if not found:
                to_drop.append(i)
        print("List of indices to drop created ...")

        okay_v = [x for x in list(res.columns) if x.startswith("der")] # Prendo il nome delle colonne che iniziano per der
        res.drop(to_drop, inplace=True)        # Droppo dal CSV gli indici recuperati precedentemente
        res.drop(okay_v, axis=1, inplace=True) # Droppo le colonne che non voglio
        print("Indices and columns dropped...")

        print(res.head())
        res[res > 1.0e59]  = "INF"  # Tutti i valori maggiori di 1e59 li mettiamo con infinito
        #res[res < -1.0e59] = "-INF" # Tutti i valori minori di -1e59 li mettiamo come -infinito
        print("Infinity value reformatted ...")

        res.to_csv("../{0}.csv".format(self.model_name), index=False)
        print("Result saved ...")

        os.chdir(self.__CURRENT_DIR)

    def run(self, clear=True):
        self.execute_sbml2modelica() # 1. Si esegue la conversione da SBML a Modelica
        self.compile_modelica()      # 2. Creato il file Modelica, si compila
        self.simulate_model()        # 3. Compilato il modello, si esegue la simulazione con la giusta configurazione
        self.save_result()           # 4. Salvo i risultati ottenuti in un CSV


if __name__ == "__main__":
    # d = test directory
    # n = current test case (5 digits)
    # o = directory containig CSV output
    # l = SBML level of test case
    # v = Version of SBML within the SBML level of test case
    _, d, n, o, l, v = sys.argv

    # Setup a test object for a single test
    t = Test(d, n, o, l, v)
    print(t)
    t.run()