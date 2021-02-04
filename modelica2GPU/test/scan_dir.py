import os

def scan_dir(current_dir):
	for file in os.listdir(current_dir):
		new_path = os.path.join(current_dir, file)
		if os.path.isdir(new_path):
			if new_path.endswith("_MPGOS"):
				print("/".join(new_path.split("/")[:-1]))
				print(new_path)
				#os.chdir(new_path)
				#os.system("rm *.txt")
			else:
				scan_dir(new_path)

scan_dir(os.getcwd())
