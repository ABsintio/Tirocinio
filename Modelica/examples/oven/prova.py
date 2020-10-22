import xml.etree.ElementTree as ET

file = "oven.system.xml"
tree = ET.parse(file)
root = tree.getroot()

initial_equation = root.find("initialEquations") # initialEquation
simple_equation  = root.find("simpleEquations")  # simpleEquation
equations = root.find("equations")               # equations

xml_equation_list = [initial_equation, simple_equation, equations]

for element_list in xml_equation_list:
    print(element_list.tag)
    for element in element_list:
        if element.tag == "equation":
            print("type: equations\nvalue: {}".format(element.text))
        elif element.tag == "whenEquation":
            string = ""
            for x in element[::2]:
                string += "{}: {}\n".format(x.tag, x.text)
            print("type: whenEquations\n{}".format(string))
    print("\n")
