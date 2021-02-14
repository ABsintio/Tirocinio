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
tot = []

root = ET.parse(tests).getroot()
for tag in root:
    prefix = "/home/yorunoomo/Scrivania/modelica2GPU/test/"
    workingdir = os.path.join(prefix, tag[1].attrib['value'])[:-1]
    if workingdir in dirs:
        if tag[0].attrib['value'] in tot:
            print(tag[0].attrib['value'])
        present.append(workingdir)
        tot.append(tag[0].attrib['value'])
        count_p += 1
    else:
        print(workingdir)
        not_present.append(workingdir)
        count_np += 1
    
print(f"present: {count_p}")
print(f"not present: {count_np}")

i = 0
for model in models:
    if model + ".mo" not in tot:
        #print(dirs[i])
        print(model)
    i += 1
