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
buildModel(DistrictHeating.HeatingSystem.HeatingSystem_N_{n_var}, stopTime=432000.0);
getErrorString();
"""

def create_build_mos():
	n_var = sys.argv[-1]
	mode = "x" if not os.path.exists(os.path.join(os.getcwd(), f"build_{n_var}.mos")) else "w"
	with open(f"build_{n_var}.mos", mode=mode) as f:
		f.write(S.format(n_var=n_var))

create_build_mos()
