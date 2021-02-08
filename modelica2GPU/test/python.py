import xml.etree.ElementTree as ET 

result_file = "result.txt"
test_file = "tests.xml"

result_dict = dict()
test_dict = dict()
with open(result_file, mode="r") as f:
    while (line := f.readline()):
        splitted_line = line.split(" ")
        model_name = splitted_line[0]
        directory = " ".join(splitted_line[1:-1])
        value = float(splitted_line[-1][:-1])
        result_dict[model_name] = (directory, value)

root = ET.parse(test_file).getroot()
for tag in root:
    model_name = tag[0].attrib['value'][:-3]
    id_test = int(tag.attrib['id'])
    test_dict[model_name] = id_test
    
residuals = []

for key in test_dict.keys():
    try:
        print(result_dict[key][-1])
        residuals.append(key)
    except KeyError:
        pass
    
for key, value in result_dict.items():
    if not key in residuals:
        print(value[-1])
