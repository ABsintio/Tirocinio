import xml.etree.ElementTree as ET
import matplotlib.pyplot as plt
import numpy as np
import os
import math

file = "tests.xml"
tree = ET.parse(file)
root = tree.getroot()
TEST_STR = """
Test{id}(
    modelName             : {model_name}
    workingDirectory      : {workdir}
    successfulTranslation : {succ_translation}
    spentTranslationTime  : {trans_time}
    MPGOScompilation      : {mpgos_com}
    CPUSimulationTimes    : {cpus_time}
    GPUSimulationTimes    : {gpus_time}
    simulationResult      : {sim_result}
)
"""

class Test:
    def __init__(self, test_id,
                       model_name,
                       workdir,
                       succ_translation,
                       tras_time,
                       mpgos_compilation,
                       cpus_time,
                       gpus_time,
                       sim_result
                ):
        
        self.test_id          = test_id
        self.modelname        = model_name
        self.workdir          = workdir
        self.succ_translation = succ_translation
        self.tras_time        = tras_time
        self.MPGOScomp        = mpgos_compilation
        self.cpus_time        = np.array(cpus_time)
        self.gpus_time        = np.array(gpus_time)
        self.sim_result       = sim_result
    
    def __str__(self):
        global TEST_STR
        return TEST_STR.format(
            id=self.test_id,
            model_name=self.modelname,
            workdir=self.workdir,
            succ_translation=self.succ_translation,
            trans_time=self.tras_time,
            mpgos_com=self.MPGOScomp,
            cpus_time=", ".join([str(x) for x in self.cpus_time]),
            gpus_time=", ".join([str(x) for x in self.gpus_time]),
            sim_result=self.sim_result
            )
    
    def plotCPUvsGPU(self):
        if any(self.cpus_time) and any(self.gpus_time):
            plot_name = "CPUvsGPU"
            xs = [1, 10, 100, 1000, 10000]
            cpus = [math.log10(x) for x in self.cpus_time]
            gpus = [math.log10(x) for x in self.gpus_time]
            plt.figure()
            plt.plot(xs, cpus, marker="_", label="CPU time")
            plt.plot(xs, gpus, marker="_", label="GPU time")
            plt.xlabel("Number Of Simulations Launches")
            plt.ylabel("log10(Time [s])")
            plt.legend(loc="upper left")
            plt.savefig(os.path.join(self.workdir, plot_name), bbox_inches='tight')


def parseXML():
    """ Parsa l'XML dei test """
    tests = []
    for test in root:
        test_id = test.attrib['id']
        model_name = test[0].attrib['value']
        workdir    = test[1].attrib['value']
        succ_trans = test[2].attrib['value']
        if "description" in test[2].attrib:
            succ_trans += ", " + test[2].attrib['description']
        trans_time = test[3].attrib['value']
        mgps_comil = test[4].attrib['value']
        plot_value = test[7].attrib['value']
        
        if plot_value != "true":
            cpus_time, gpus_time = [], []
            test[7].set('value', 'true')
            for sim in test[5]:
                cpus_time.append(float(sim.attrib['cpu'][:-2])/1000)
                gpus_time.append(float(sim.attrib['gpu'][:-2])/1000)
            
            sim_result = test[6].attrib['value']
            if "description" in test[6].attrib:
                sim_result += ", " + test[6].attrib['description']
            tests.append(Test(test_id, model_name, workdir, succ_trans, trans_time, mgps_comil, cpus_time, gpus_time, sim_result))
    
    return tests
    
ts = parseXML()
for test in ts:
    print("Getting Test number: " + test.test_id)
    out = open(os.path.join(test.workdir, "out"), mode="w")
    print(test, file=out)
    out.close()
    test.plotCPUvsGPU()
            
tree.write(file)
