import xml.etree.ElementTree as ET

tree = ET.parse("sbml2ModelicaTyson.BIOMD0000000005.xml")
root = tree.getroot()
for child in root.iter("variable"):
	print(child)
