import re
RE = r"\s+input.*"

filename = "Class_elmt_compartment_0000001.mo"
with open(filename, mode="r", encoding="utf-8") as stream:
	while (line := stream.readline()) :
		if re.match(RE, line):
			print(line.strip().split(" ")[-1][:-1])
 
