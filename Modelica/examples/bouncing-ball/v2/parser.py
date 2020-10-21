import xml.etree.ElementTree as ET

file = "v2.BouncingBall.xml"
tree = ET.parse(file)
root = tree.getroot()

initial_equation = root.find("initialEquations") # initialEquation
simple_equation  = root.find("simpleEquations")  # simpleEquation
equations = root.find("equations")               # equations

for iter_initial in root.find("initialEquations"):
    print(iter_initial.attrib['id'])
