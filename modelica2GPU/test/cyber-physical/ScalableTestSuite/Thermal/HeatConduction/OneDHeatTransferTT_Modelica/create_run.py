import sys

S = """
loadModel(Modelica);
getErrorString();
loadFile("../package.mo");
loadFile("package.mo");
getErrorString();
loadFile("OneDHeatTransferTT_Modelica_model.mo");
getErrorString();
loadFile("OneDHeatTransferTT_Modelica_N_{n_var}.mo");
getErrorString();
simulate(HeatConduction.OneDHeatTransferTT_Modelica.OneDHeatTransferTT_Modelica_N_{n_var}, stopTime=350,outputFormat="csv");
getErrorString();
"""

def create_run_mos():
	n_var = sys.argv[-1]
	with open(f"run_{n_var}.mos", mode="x") as f:
		f.write(S.format(n_var=n_var))

create_run_mos()
