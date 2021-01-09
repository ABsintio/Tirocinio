import sys
import os

S = """
loadModel(Modelica);
getErrorString();
loadFile("../package.mo");
loadFile("package.mo");
getErrorString();
loadFile("Generator.mo");
getErrorString();
loadFile("PowerSystem_model.mo");
getErrorString();
loadFile("TwoGeneratorConstantLoad.mo");
getErrorString();
loadFile("TwoGeneratorStepLoad.mo");
getErrorString();
loadFile("PowerSystemStepLoad_N_{n_var}_M_{m_var}.mo");
getErrorString();
simulate(ConceptualPowerSystem.PowerSystem.PowerSystemStepLoad_N_{n_var}_M_{m_var}, stopTime=200, outputFormat="csv");
getErrorString();
"""

def create_run_mos():
	n_var = sys.argv[-2]
	m_var = sys.argv[-1]
	mode = "x" if not os.path.exists(os.path.join(os.getcwd(), f"run_{n_var}_{m_var}.mos")) else "w"
	with open(f"run_{n_var}_{m_var}.mos", mode=mode) as f:
		f.write(S.format(n_var=n_var, m_var=m_var))

create_run_mos()