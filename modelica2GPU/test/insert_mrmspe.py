import json

tests = json.load(open("tests.json", mode="r"))

def load_mrmspe(file):
	mrmspe_dict = dict()
	with open(file, mode="r") as f:
		while (l := f.readline()):
			splitted_line = l.split()
			model_name = splitted_line[0]
			model_dir = " ".join(splitted_line[1:-1])
			mrmspe = float(splitted_line[-1])
			mrmspe_dict[model_name] = (model_dir, mrmspe)

	return mrmspe_dict

mrmspe_dict = load_mrmspe("result_percentage.dat")

for k, v in tests.items():
	model_name = v['model']
	w_dir = v['w_dir']
	found = False
	for k1, v1 in mrmspe_dict.items():
		if v1[0] == w_dir and model_name == k1:
			v['mrmspe'] = v1[-1]


with open("tests.json", mode="w") as f:
	json.dump(tests, f)