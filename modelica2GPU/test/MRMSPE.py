import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np

mrmspes = []
with open("new_mrmspe.dat") as f:
    while (l := f.readline()):
        mrmspes.append(float(l))

sns.kdeplot(np.array(mrmspes), cumulative="True")
plt.xscale("log")
plt.grid(True)
plt.show()
