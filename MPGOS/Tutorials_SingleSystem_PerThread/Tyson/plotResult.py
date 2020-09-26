import matplotlib.pyplot as plt
import sys
import numpy as np

filename = "DenseOutput_0.txt"

try:
	stream = open(filename, mode="r", encoding="utf-8")
except Exception as e:
	print("Qualcosa è andato storto ...")
	sys.exit(1)
	
rows = stream.readlines()
collection = []
for i, row in enumerate(rows):
	if "Time series" in row:
		collection += rows[i + 1:]
		break

formatted_rows = []
for x in collection:
	tmp = x.split(",")
	tmp_row = [tmp[0].strip()] + tmp[1:-1] + [tmp[-1][:-1].strip()]
	formatted_rows.append(list(map(lambda x: float(x), tmp_row)))

array = np.array(formatted_rows)

# Getting data
times_array = array[:,  0]
M_on_CT	    = array[:,  1]
YT_on_CT    = array[:, -1]

plt.plot(times_array, M_on_CT,  marker='_', label="[M]/[CT]" )
plt.plot(times_array, YT_on_CT, marker="_", label="[YT]/[CT]")
plt.legend(loc="upper left")
plt.show()
