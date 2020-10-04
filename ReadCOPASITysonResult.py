import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

data = pd.read_csv("COPASITysonResulSimulation.csv", "\t")
datas = []
for x in data.values:
    new_x = str(x[:-1]).__repr__().replace("\n", "")[2:-2]
    new_data = []
    for y in new_x.split():
        if '\\\\n' in y.__repr__():
            y = y.replace('\\n', '')
        elif '\\n' in y.__repr__():
            y = y.replace('\n', '')
        new_data.append(float(y))
    
    datas.append(new_data)

results = np.array(datas)

# Getting Results
time_step              = results[:, 0]
cdc2k_result           = results[:, 1] # [C2]
cdc2k_p_result         = results[:, 5] # [CP]
p_cyclin_cdc2_result   = results[:, 6] # [M]
p_cyclin_cdc2_p_result = results[:, 2] # [pM]
cyclin_result          = results[:, 3] # [Y]
p_cyclin_result        = results[:, 4] # [YP]

# Calculating total_cdc2, total_cyclin
total_cdc2   = cdc2k_result + cdc2k_p_result + p_cyclin_cdc2_result + p_cyclin_cdc2_p_result
total_cyclin = cyclin_result + p_cyclin_result + p_cyclin_cdc2_result + p_cyclin_cdc2_p_result

# Calculating [M]/[CT], [YT]/[CT]
M_on_CT  = [x / y for x, y in zip(p_cyclin_cdc2_result, total_cdc2)]
YT_on_CT = [x / y for x, y in zip(total_cyclin, total_cdc2)]

# Plotting Information
plt.plot(time_step, M_on_CT,  marker='_', label="[M]/[CT]")
plt.plot(time_step, YT_on_CT, marker='_', label="[YT]/[CT]")
plt.xlabel("Concentrations")
plt.ylabel("Time")
plt.legend(loc="upper left")
plt.show()