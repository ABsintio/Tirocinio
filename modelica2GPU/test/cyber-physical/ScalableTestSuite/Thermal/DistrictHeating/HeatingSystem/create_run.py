import sys
import os

S = """
loadModel(Modelica);
getErrorString();
loadFile("../package.mo");
loadFile("Functions.mo");
loadFile("package.mo");
getErrorString();
loadFile("HeatingSystem_model.mo");
getErrorString();
loadFile("HeatingSystem_N_{n_var}.mo");
getErrorString();
simulate(DistrictHeating.HeatingSystem.HeatingSystem_N_{n_var}, stopTime=432000.0, outputFormat="csv", interval=20);
getErrorString();
"""

def create_run_mos():
	n_var = sys.argv[-1]
	mode = "x" if not os.path.exists(os.path.join(os.getcwd(), f"run_{n_var}.mos")) else "w"
	with open(f"run_{n_var}.mos", mode=mode) as f:
		f.write(S.format(n_var=n_var))

create_run_mos()
