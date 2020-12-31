import sys

S = """
loadModel(Modelica);getErrorString();
loadFile("package.mo");getErrorString();
loadFile("HarmoniOscillator.mo");getErrorString();
loadFile("HarmonicOscillator_N_{n_var}.mo");getErrorString();
simulate(HarmonicOscillator.HarmonicOscillator_N_{n_var}, stopTime=10.0,outputFormat="csv");getErrorString();
"""

def create_run_mos():
	n_var = sys.argv[-1]
	with open(f"run_{n_var}.mos", mode="x") as f:
		f.write(S.format(n_var=n_var))

create_run_mos()
