import sys
import os

S = """
loadModel(Modelica);
getErrorString();
loadFile("package.mo");
getErrorString();
loadFile("HarmonicOscillatorNetwork_model.mo");
getErrorString();
loadFile("HarmonicOscillatorNetwork_N_{n_var}.mo");
getErrorString();
simulate(HarmonicOscillatorNetwork.HarmonicOscillatorNetwork_N_{n_var}, stopTime=10, outputFormat="csv");
getErrorString();
"""

def create_run_mos():
	n_var = sys.argv[-1]
	mode = "x" if not os.path.exists(os.path.join(os.getcwd(), f"run_{n_var}.mos")) else "w"
	with open(f"run_{n_var}.mos", mode=mode) as f:
		f.write(S.format(n_var=n_var))

create_run_mos()
