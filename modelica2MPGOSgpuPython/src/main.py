import xml.etree.ElementTree as ET
import os
from os import path
import sys
from builder import SystemDefinition

#--------------------------# DEFIINIZIONE DELLA FUNZIONE DI CREAZIONE DELL'XML NEL CASO IN CUI NON ESISTA # --------------------------#


def contains_modelica(workdir:str) -> bool:
	"""
	Controlla che nella working dir siano effettivamente
	presenti i file modelica che ci dovrebbero essere 
	nelle directory create da sbml2Modelica
	"""
	return "Functions.mo" in os.listdir(workdir) and \
		   "Reactions.mo" in os.listdir(workdir) and \
		   "package.mo"   in os.listdir(workdir) and \
		   "Constants.mo" in os.listdir(workdir)
		   
def getmodelnamefromsbml(sbml:str) -> str:
	"""
	Prende in input l'sbml e restituisce il nome del modello
	di modo da potre creare il comando nello script modelica.
	"""
	root = ET.parse(sbml).getroot()
	modelname = list(root)[0].attrib['id']
	return modelname

def omcscript_dumpXMLDAE(workingdir:str, sbml:str) -> str:
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
	os.system("omc script.mos > log.out")
	os.chdir("..")
	
	return path.abspath(path.join(workingdir, modelfile + ".xml"))


def main():
    try:
        argv = sys.argv # Prende gli argomenti dati in input da cmdline
        msg = "Inserire in ordine solo i seguenti parametri: \n" + \
			  "1) 1 se si vuole creare l'xml, 0 altrimenti \n" + \
			  "2) Il path all'XML esistente se si vuole l'opzione 0 del primo parametro"
        xmltest = argv[1]
        path2xml = ""
        workingdir = ""
        if int(xmltest) == 1: 
            assert len(argv) == 4
            workingdir  = argv[2] # Parametro 2 per la workingdir   (tutto il path)
            sbmlmodel   = argv[3] # Parametro 3 per il modello sbml (tutto il path)
            try:
                print("CREATING XML FILE ...")
                path2xml = omcscript_dumpXMLDAE(workingdir, sbmlmodel)
            except Exception as e:
                print("Qualcosa è andato storto ...")
                print(e)
                sys.exit(1)
        else:
            path2xml = argv[2]
            workingdir = "./" + path2xml.split("/")[-2]
        
        system = SystemDefinition(path2xml, workingdir)
        system.createSystemDefinitionFile()
    except FileNotFoundError as fnfe:
        print(fnfe)
        print("Il path all'XML è errato ...")
    except IndexError as e:
        print(msg)
    except AssertionError as ae:
        msg += "\n3) Il path assoluto della working directory che presenta i .mo\n" + \
			   "4) Il path assoluto dell'xml che descrive l'sbml" 
        print(msg)
    except Exception as e:
        print(e)
    finally:
        sys.exit()

if __name__ == "__main__":
    main()