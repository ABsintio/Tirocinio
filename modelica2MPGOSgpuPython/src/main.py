import xml.etree.ElementTree as ET
import os
from os import path
import sys
import subprocess
import builder
import parser
from notifier import Notifier, notifier
import time


#--------------------------# DEFINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


NOTIFICATION = True if int(sys.argv[-1]) == 1 else False


#--------------------------# DEFINIZIONE DELLA FUNZIONE DI CREAZIONE DELL'XML NEL CASO IN CUI NON ESISTA # --------------------------#


def contains_modelica(workdir):
	"""
	Controlla che nella working dir siano effettivamente
	presenti i file modelica che ci dovrebbero essere 
	nelle directory create da sbml2Modelica
	"""
	return any(list(filter(lambda x: x.endswith(".mo"), os.listdir(workdir))))
		   
def getmodelnamefromsbml(sbml):
	"""
	Prende in input l'sbml e restituisce il nome del modello
	di modo da potre creare il comando nello script modelica.
	"""
	root = ET.parse(sbml).getroot()
	modelname = list(root)[0].attrib['id']
	return modelname

@notifier(
	NOTIFICATION,
	"Creating XML File",
	"modelica2GPU sta creando il file XML tramite lo script \"script.mos\"",
	"Creating XML File",
	"modelica2GPU ha terminato la creazione del file XML del modello"
)
def omcscript_dumpXMLDAE(workingdir, sbml):
	"""
	Funzione che crea uno script.mos per poter creare
	il file XML nel caso in cui esso non sia presente.
	Ritorna il nome dell'xml del modello
	"""
	assert path.isdir(workingdir) 		 # La directory in input deve essere effettivamente una directory
	assert contains_modelica(workingdir) # La directory deve essere un risultato di sbml2Modelica
	assert path.isfile(sbml) 			 # Il nome dell'sbml deve essere effettivamente un file
	modelfile = workingdir.split("/")[-1] + "." + getmodelnamefromsbml(sbml)
	script_filename = path.join(workingdir, "script.mos")
	with open(script_filename, mode="w") as stream:
		stream.write("loadModel(Modelica);\n")
		stream.write("getErrorString();\n")
		for file in os.listdir(workingdir):
			if file.endswith(".mo"):
				command = "loadFile(\"%s\");\n" % (file)
				stream.write(command)
				stream.write("getErrorString();\n")
		command = f"dumpXMLDAE({modelfile}, translationLevel=\"optimiser\", addMathMLCode=true);\n"
		stream.write(command)
		stream.write("getErrorString();\n")
	
	os.chdir(workingdir)
	try:
		subprocess.run(["omc script.mos > log.out"], shell=True, check=True)
	except subprocess.CalledProcessError as err:
		n = Notifier("modelica2GPU")
		n.setupforerror("Error: CalledProcessError", err.__str__())
		n.show()
		time.sleep(3)
	os.chdir("..")
	return path.abspath(path.join(workingdir, modelfile + ".xml"))


def main():
	notif = Notifier("modelica2GPU")
	try:
		argv = sys.argv # Prende gli argomenti dati in input da cmdline
		msg = "Inserire in ordine solo i seguenti parametri: \n" + \
			  "1) 1 se si vuole creare l'xml, 0 altrimenti \n" + \
			  "2) Il path all'XML esistente se si vuole l'opzione 0 del primo parametro \n" + \
			  "3) 1 se si vuole attivare le notifiche, 0 altrimenti"
		xmltest = argv[1]
		path2xml = ""
		if int(xmltest) == 1:
			assert len(argv) == 5
			workingdir   = argv[2] # Parametro 2 per la workingdir   (tutto il path)
			sbmlmodel    = argv[3] # Parametro 3 per il modello sbml (tutto il path)
			try:
				path2xml = omcscript_dumpXMLDAE(workingdir, sbmlmodel)
			except Exception as identifier:
				notif.setupforerror("Errore: Conversion", identifier.__str__())
				notif.show()
				print(identifier)
				sys.exit(1)
		else:
			path2xml = argv[2]

		system = builder.SystemDefinition(path2xml)
		filename = system.createSystemDefinitionFile()
	except FileNotFoundError as fnfe:
		notif.setupforerror("Errore: FileNotFoundError", fnfe.__str__())
		notif.show()
	except IndexError as ie:
		notif.setupforerror("Errore: IndexError", ie.__str__())
		notif.show()
		print(ie)
		print(msg)
	except AssertionError:
		msg += "\n3) Il path assoluto della working directory che presenta i file .mo del modello generati da sbml2Modelica\n" + \
			   "4) Il path assoluto dell'xml che descrive il modello, ossia l'sbml"
		print(msg)
	except Exception as e:
		print(e)
	finally:
		sys.exit(1)
		

if __name__ == "__main__":
    main()