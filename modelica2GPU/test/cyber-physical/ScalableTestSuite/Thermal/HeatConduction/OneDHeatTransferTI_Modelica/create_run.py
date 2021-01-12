import sys

S = """
loadModel(Modelica);
getErrorString();
loadFile("../package.mo");
loadFile("package.mo");
getErrorString();
loadFile("OneDHeatTransferTI_Modelica_model.mo");
getErrorString();
loadFile("OneDHeatTransferTI_Modelica_N_{n_var}.mo");
getErrorString();
simulate(HeatConduction.OneDHeatTransferTI_Modelica.OneDHeatTransferTI_Modelica_N_{n_var}, stopTime=1500,outputFormat="csv");
getErrorString();
"""

def create_run_mos():
	n_var = sys.argv[-1]
	with open(f"run_{n_var}.mos", mode="x") as f:
		f.write(S.format(n_var=n_var))

create_run_mos()
