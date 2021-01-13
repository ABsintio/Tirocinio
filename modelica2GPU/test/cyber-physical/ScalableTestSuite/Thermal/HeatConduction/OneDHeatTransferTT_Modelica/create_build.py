import sys

S = """
loadModel(Modelica);
getErrorString();
loadFile("../package.mo");
loadFile("package.mo");
getErrorString();
loadFile("OneDHeatTransferTI_Modelica_model.mo");
getErrorString();
loadFile("OneDHeatTransferTT_Modelica_N_{n_var}.mo");
getErrorString();
buildModel(HeatConduction.OneDHeatTransferTT_Modelica.OneDHeatTransferTT_Modelica_N_{n_var}, stopTime=350.0);
getErrorString();
"""

def create_build_mos():
	n_var = sys.argv[-1]
	with open(f"build_{n_var}.mos", mode="x") as f:
		f.write(S.format(n_var=n_var))

create_build_mos()
