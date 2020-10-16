import xml.etree.ElementTree as ET
import re

INIT_EQ = r"\w+\.*\w+\s*=\s*\d+\.\d+"
EQ  = r"(der[(].*[)]|\w+\.*\w+)\s*=.*[(+*)-]+"

MPGOS_PerThread_OdeFunction = """
Da completare
"""

class Parser:
	def __init__(self, xml_filename):
		self.modelname = xml_filename.split(".")[-2]
		self.root = ET.parse(xml_filename).getroot()
		self.varswithbind = []
		self.varswithoutbind = []
		self.initeqs = []
		self.ode = []
		self.algs = []
		self.equation = []


	def __str__(self):
		string = self.modelname + "( \n"
		string += "\tVariables (No bindExpression): {\n"
		for var in self.varswithoutbind:
			string += "\t\t{}\n".format(str(var))
		string += "\t}, Variable (With bindExpression): {\n"
		for var in self.varswithbind:
			x, y = var
			string += "\t\t{} -> {}\n".format(str(x), str(y))
		string += "\t}, Initial Equations: {\n"
		for eq in self.initeqs:
			string += "\t\t{}\n".format(str(eq))
		string += "\t}, ODE: {\n"
		for eq in self.ode:
			string += "\t\t{}\n".format(str(eq))
		string += "\t}, Equation: {\n"
		for eq in self.equation:
			string += "\t\t{}\n".format(str(eq))
		string += "\t}, Algorithms: {\n"
		for alg in self.algs:
			string += "\t\t{}\n".format(str(alg))
		string += "\t}\n)"
		return string

	def parsevar(self):
		for child in self.root.iter("variable"):
			t = [child.attrib['name'], None]
			for iter in child.iter("bindExpression"):
				t[1] = iter.attrib['string']
			if t[1] is None:
				self.varswithoutbind.append(t[0])
			else:
				self.varswithbind.append(tuple(t))

	def parseequations(self):
		for child in self.root.iter("equation"):
			text = child.text.strip()
			if re.match(INIT_EQ, text):
				self.initeqs.append(text)
			elif re.match(EQ, text):
				if text.startswith("der("):
					self.ode.append(text)
				else:
					self.equation.append(text)

	def parsealgorithms(self):
		for child in self.root.iter("algorithm"):
			text = child.text.replace("algorithm", "").replace(" ", "").strip()
			for subtext in text.split("\n"):
				self.algs.append(subtext.strip()[:-1])

	def parse(self):
		self.parsevar()
		self.parseequations()
		self.parsealgorithms()

if __name__ == "__main__":
	p = Parser("S2MBIOMDx07125.model_0000001.xml")
	p.parse()
	print(p)
