import sys
import os

S = """
loadModel(Modelica);
getErrorString();
loadFile("../package.mo");
loadFile("package.mo");
getErrorString();
loadFile("SteamPipe_model.mo");
getErrorString();
loadFile("SteamPipe_N_{n_var}.mo");
getErrorString();
buildModel(Advection.SteamPipe.SteamPipe_N_{n_var}, stopTime=20, interval=4e-03, tolerance=1e-008, outputFormat="csv");
getErrorString();"""

def create_run_mos():
	n_var = sys.argv[-1]
	mode = "x" if not os.path.exists(os.path.join(os.getcwd(), f"run_{n_var}.mos")) else "w"
	with open(f"run_{n_var}.mos", mode=mode) as f:
		f.write(S.format(n_var=n_var))

create_run_mos()
