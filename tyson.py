import roadrunner
import matplotlib.pyplot as plt
import time

filename = "models/BIOMD0000000005_url.xml"
rr = roadrunner.RoadRunner(filename)

transientStart = time.process_time()
for i in range(10000):
	result = rr.simulate(0, 100)

transientEnd = time.process_time()
print(f"Finished simulation in: {transientEnd - transientStart}")

"""
# Get result
times = result["time"]
cdc2k_result = result["[C2]"]
cdc2k_p_result = result["[CP]"]
p_cyclin_cdc2_result = result["[M]"]
p_cyclin_cdc2_p_result = result["[pM]"]
cyclin_result = result["[Y]"]
p_cyclin_result = result["[YP]"]

# Calculate total_cdc2 and total_cyclin
total_cdc2 = [x + y + z + q for x, y, z, q in zip(cdc2k_result, cdc2k_p_result, p_cyclin_cdc2_result, p_cyclin_cdc2_p_result)]
total_cyclin = [x + y + z + q for x, y, z, q in zip(cyclin_result, p_cyclin_result, p_cyclin_cdc2_result, p_cyclin_cdc2_p_result)]

# Calculate [M]/[CT] and [YT]/[CT]
M_on_CT = [x/y for x, y in zip(p_cyclin_cdc2_result, total_cdc2)]
YT_on_CT = [x/y for x, y in zip(total_cyclin, total_cdc2)]

# Plotting
plt.plot(times, M_on_CT,  marker='o', label="[M]/[CT]")
plt.plot(times, YT_on_CT, marker='o', label="[YT]/[CT]")
plt.legend(loc="upper left")
plt.show()"""
