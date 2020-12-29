import sys

S = """
loadModel(Modelica);getErrorString();
loadFile("package.mo");getErrorString();
loadFile("CascadedFirstOrder.mo");getErrorString();
loadFile("CascadedFirstOrder_N_{n_var}.mo");getErrorString();
simulate(SimpleODE.CascadedFirstOrder_N_100, stopTime=2.0,outputFormat="csv");getErrorString();
"""

PLOT_S = "plot({%s}, externalWindow=true);getErrorString();"

def create_run_mos():
	n_var = sys.argv[-1]
	plot_strings = []
	for i in range(0, int(n_var), 10):
		vars = ",".join([f"x[{j + 1}]" for j in range(i, i + 10)])
		plot_strings.append(PLOT_S % (vars))
	with open(f"run_{n_var}.mos", mode="x") as f:
		f.write(S.format(n_var=n_var) + "\n" + "\n".join(plot_strings))

create_run_mos()
