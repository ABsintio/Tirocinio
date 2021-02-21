import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np 


sns.set()
sns.set_style(style="white")

data = [float(x) for x in open("speedup2.dat", mode="r").read().split("\n") if x]
np_data = np.array(data)

try:
	sns.kdeplot(data, cumulative=True, color="magenta")
	plt.show()
except Exception as e:
	print(e)