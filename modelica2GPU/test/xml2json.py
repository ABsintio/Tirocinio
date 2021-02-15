import xml.etree.ElementTree as ET
import json 
import os
import os.path as path
import sys


class XML2JSON:

	PREFIX = "/home/yorunoomo/Scrivania/modelica2GPU/test/"

	def __init__(self, xml_file, json_output):
		self.xml_file = xml_file
		self.json_output = json_output
		self.xml_data = dict()

	def extract_data(self):
		root = ET.parse(self.xml_file).getroot()
		for id_test, test in enumerate(root):
			try:
				str_id = str(id_test)
				model_name = test[0].attrib['value'][:-3]
				workingdir = path.join(self.PREFIX, test[1].attrib['value'])[:-1]
				succ_trans = bool(test[2].attrib['value'])
				trans_time = float(test[3].attrib['value'][:-2])
				MPGOS_comp = bool(test[4].attrib['value'])
				simuls = []
				error = ""

				for subtag in list(test[5]):
					n = int(subtag.attrib['value'])
					cpu = float(subtag.attrib['cpu'][:-2])
					gpu = float(subtag.attrib['gpu'][:-2])
					simuls.append([n, cpu, gpu])

				error = test[2].attrib['description']
			except Exception:
				pass
			finally:
				self.xml_data[str_id] = {
					"model": model_name,
					"w_dir": workingdir,
					"successfulTranslation": succ_trans,
					"translationTime (sec)": trans_time,
					"MPGOScompilation": MPGOS_comp,
					"simulations (msec)": simuls,
					"error": error
				}

	def save2json(self):
		mode = "x" if not path.isfile(self.json_output) else "w"
		with open(self.json_output, mode=mode) as stream:
			json.dump(self.xml_data, stream)


if __name__ == "__main__":
	xml = sys.argv[-2]
	json_output = sys.argv[-1]
	xml2json = XML2JSON(xml, json_output)
	xml2json.extract_data()
	xml2json.save2json()