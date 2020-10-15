import xml.etree.ElementTree as ET

class Parser:
	def __init__(self, xml_filename):
		self.modelname = xml_filename.split(".")[-2]
		self.root = ET.parse(xml_filename).getroot()
		self.varswithbind = []
		self.varswithoutbind = []
		self.eqs = []
		self.algs = []

	def __str__(self):
		string = self.modelname + "( \n"
		string += "\tVariables (No bindExpression): {\n"
		for var in self.varswithoutbind:
			string += "\t\t{}\n".format(str(var))
		string += "\t}, Variable (With bindExpression): {\n"
		for var in self.varswithbind:
			x, y = var
			string += "\t\t{} -> {}\n".format(str(x), str(y))
		string += "\t}, Equations: {\n"
		for eq in self.eqs:
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
			self.eqs.append(child.text.strip()[:-1])

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
