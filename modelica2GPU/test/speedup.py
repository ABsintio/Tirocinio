import xml.etree.ElementTree as ET
import os

tests = "tests.xml"
dir_f = "result.txt"

dirs = []
models = []

with open(dir_f, mode="r") as f:
    while (line := f.readline()):
        splitted_lines = line.split(" ")
        dirs.append(" ".join(splitted_lines[1:-1]))
        models.append(splitted_lines[0])

present = not_present = []
count_p = count_np = 0
count_n = 0
tot = []

root = ET.parse(tests).getroot()
for tag in root:
    prefix = "/home/yorunoomo/Scrivania/modelica2GPU/test/"
    workingdir = os.path.join(prefix, tag[1].attrib['value'])[:-1]
    if workingdir in dirs:
        present.append(workingdir)
        tot.append(tag[0].attrib['value'])
        count_p += 1
    else:
        not_present.append(workingdir)
        count_np += 1
    
    if not list(tag[5]):
        #print(workingdir)
        count_n += 1

print(f"present: {count_p}")
print(f"not present: {count_np}")

print(f"Worst time: {(count_n + 12) * 100 / count_p}, {count_n + 12}")

i = 0
for model in models:
    if model + ".mo" not in tot:
        print(model, dirs[i])
    i += 1
