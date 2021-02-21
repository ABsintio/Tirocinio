import os
import time
import json
import sys


MAKEFILE = """
INCL_DIR = -I/home/yorunoomo/Scrivania/Tirocinio/util/Software/MPGOS/SourceCodes/
CMPL_OPT = -O3 --std=c++11 --ptxas-options=-v --gpu-architecture=sm_75 -lineinfo -w -maxrregcount=80

all: {model}.exe

{model}.exe: {model}.cu
	nvcc -o {model}.exe {model}.cu $(INCL_DIR) $(CMPL_OPT)

clean:
	rm -f {model}.exe
	rm -f *.txt
	rm -f *.csv
"""


def execute_run(w_dir, modelname):
	old_dir = os.getcwd()
	os.chdir(w_dir)
	print(os.getcwd())

	load_text = open(f"{modelname}.cu", mode="r").read()
	load_text = load_text.replace(
		"int NumberOfProblems = NT",
		"int NumberOfProblems = 10*NT")

	new_file = f"{modelname}_1.cu"
	with open(new_file, mode="x") as s:
		s.write(load_text)

	old_makefile = ""

	with open("makefile", mode="r+") as f:
		old_makefile = f.read()
		f.write(MAKEFILE.format(model=new_file[:-3]))

	os.system("make all 1> /dev/null")

	start = time.time()

	try:
		print(f"starting execution of {os.path.join(w_dir, new_file)} ...")
		os.system(f"./{new_file[:-2]}exe 1> /dev/null")
	except KeyboardInterrupt:
		pass
	except Exception as e:
		print(e)
		sys.exit(1)
	
	end = time.time()

	os.system(f"rm -rf {new_file}")
	os.system(f"make clean 1> /dev/null")

	with open("makefile", mode="w") as f:
		f.write(old_makefile)

	os.chdir(old_dir)

	return (end - start) * 1000


tests = json.load(open("tests.json", mode="r"))

for k, v in tests.items():
	v['serialTimePer10'] = ""
	if v['simulations (msec)']:
		tot_time = v['simulations (msec)'][0][-1] * 10
		if not v['simulations (msec)'][0][-1] > 1:
			tot_time = execute_run(os.path.join(v['w_dir'], f"{v['model']}_MPGOS"), v['model'])
			print(tot_time)
		v['serialTimePer10'] = tot_time


with open("tests.json", mode="w") as f:
    json.dump(tests, f)
