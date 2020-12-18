import os
import subprocess
import time

for dire in os.listdir():
	new_path = os.path.join(os.getcwd(), dire)
	if os.path.isdir(new_path):
		os.chdir(new_path)
		exsist_png = any(list(map(lambda x: x.endswith(".png"), os.listdir(new_path))))
		if not exsist_png:
			print(os.getcwd())
			try:
				subprocess.run(["omc", "run.mos"], check=True)
				time.sleep(2)
				subprocess.run(["sh", "clear.sh"], check=True)
				csv_file = list(filter(lambda x: x.endswith(".csv"), os.listdir()))[-1]
				subprocess.run(["python3", "OMCPlot.py", "--csv", csv_file], check=True)
			except subprocess.CalledProcessError as e:
				print("Plotting non riuscito")
				print(e)
		os.chdir("..")

