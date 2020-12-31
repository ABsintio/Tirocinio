import sys

S = """
loadModel(Modelica);getErrorString();
loadFile("package.mo");getErrorString();
loadFile("TransmissionLineEquations.mo");getErrorString();
loadFile("TransmissionLineEquations_N_{n_var}.mo");getErrorString();
simulate(TransmissioneLine.TransmissioneLineEquations_N_{n_var}, stopTime=2.0,outputFormat="csv");getErrorString();
"""

def create_run_mos():
	n_var = sys.argv[-1]
	with open(f"run_{n_var}.mos", mode="x") as f:
		f.write(S.format(n_var=n_var))

create_run_mos()
