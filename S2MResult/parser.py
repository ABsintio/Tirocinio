import xml.etree.ElementTree as ET
import re
from typing import List
import os
from os import path
import sys


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
	
	
#--------------------------# DEFIINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


INIT_EQ   = r"\w+\.*\w+\s*=\s*\d+\.\d+"		# Pattern per matching delle equazioni iniziali
ODE_EQ    = r"der[(].*[)]\s*=.*[(+*)-]+"	# Pattern per matching delle ODE
EQ_EQ     = r"\w+\.*\w+\s*=.*[(+*)-]+"		# Pattern per matching delle Equazioni di assegnazione
INPUT_F   = r"\s+input\s*.*"				# Pattern per matching degli input delle funzioni/classi/model
OUTPUT_F  = r"\s+output.*"					# Pattern per matching degli output delle funzioni/classi/model
START_ALG = r"\s*algorithm"					# Pattern per matching dello start di una algoritmo
END 	  = r"\s*end.*"						# Pattern per matching della fine di una funzione/classe/model
ZERO_DER  = r"\s*der[(].*[)]\s*=\s*0.0"		# Pattern per matching delle derivate pari a 0

				           
#--------------------------# DEFINIZIONE DEL PATTERN DELLE FUNZIONI DA UTILIZZARE IN MPGOS    # --------------------------#
				           

# X
MPGOS_PerThread_OdeFunction = """
template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(
	int tid, int NT, \\
	Precision*    F, Precision*    X, Precision     T, \\
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
%s
}
"""

MPGOS_PerThread_EventFunction = """
template<class Precision> __forceinline__ __device__ void PerThread_EventFunction(
	int tid, int NT, Precision*	  EF, \\
	Precision     T, Precision    dT, Precision    TD, Precision*	X, \\
	Precision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi  		
) {
%s
}
"""

MPGOS_PerThread_ActionAfterEventDetection = """
template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterEventDetection(
    int tid, int NT, int IDX, int& UDT, \\
    Precision    &T, Precision   &dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
%s
}
"""

# ACC, cPAR
MPGOS_PerThread_ActionAfterSuccessfulTimeStep = """
template<class Precision> __forceinline__ __device__ void PerThread_ActionAfterSuccessfulTimeStep(
    int tid, int NT, int& UDT, \\
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR, int*       sPARi, Precision* ACC, int* ACCi
) {
%s
}
"""

MPGOS_PerThread_Initialization = """
template<class Precision> __forceinline__ __device__ void PerThread_Initialization(
    int tid, int NT, int& DOIDX, \\
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
    T     = TD[0];
    DOIDX = 0;
%s
}
"""

MPGOS_PerThread_Finalization = """
template <class Precision> __forceinline__ __device__ void PerThread_Finalization(
    int tid, int NT, int& DOIDX, \\
    Precision&    T, Precision&   dT, Precision*    TD, Precision*   X, \\
    Precision* cPAR, Precision* sPAR,       int* sPARi, Precision* ACC, int* ACCi
) {
%s	
}
"""

MPGOS_Model_SystemDefinition = """
#ifndef %s_PERTHREAD_SYSTEMDEFINITION_H
#define %s_PERTHREAD_SYSTEMDEFINITION_H

#include <fstream>
#include <iostream>
#include <string>

%s

#endif
"""


#--------------------------# DEFINIZIONE DI PARAMETRI E DELLE VARIABILI NECESSARIE AD MPGOS   # --------------------------#
				           						   

class Var:
	""" Classe che descrive una variabile qualsiasi, con nome, valore e valoreiniziale se esiste """
	def __init__(self, nome:str, value:str, id, initvalue=None):
		self.nome = nome
		self.value = value
		self.init = initvalue
		self.MPGOSname = "Var"
		self.id = id

	def __str__(self) -> str:
		string = f"{self.nome}(value={self.value}, iValue={self.init}, id={self.id}, MPGOSname={self.createMPGOSname()})"
		return string

	@staticmethod
	def forEach(l:List[any], func) -> None:
		for x in l:
			func(x)
	
	@staticmethod
	def createCodeLineMPGOS(*l:List[any]) -> str:
		lista = []
		for x in l:
			lista.append("".join(list(map(lambda y: f"\t{y.createMPGOSname()} = {y.value};\n", x))))
		return "".join(lista)

	def createMPGOSname(self):
		return self.MPGOSname + "[" + str(self.id) + "]"
	
	def setid(self, id:int) -> None:
		self.id = id
	
	def setvalue(self, value:str) -> None:
		self.value = value


class ACC(Var):
	"""
	Parametri programmabili dall'utente e multi-purpose. Sono
	molto efficienti dal momento che tramite essi possono essere
	memorizzate molte informazioni quali traiettorie o altri dati
	senza doverli salvare ogni volta nel dense output.
	"""
	def __init__(self, nome, value, initvalue, id):
		super().__init__(nome, value, id, initvalue)
		self.MPGOSname = "ACC"


class sPAR(Var):
	"""
	Sono i parametri condivisi tra l'host (CPU) e il device (GPU).
	Essi sono principalmente parametri costanti che non variano 
	durante la simulazione, oppure tra diverse simulazioni. 
	"""
	def __init__(self, nome, value, initvalue, id):
		super().__init__(nome, value, id, initvalue)
		self.MPGOSname = "sPAR"


class cPAR(Var):
	"""
	A differenza dei parametri condivisi, i parametri di controllo
	hanno la principale capacità di cambiare nel corso delle simulazioni
	di modo da dirigere la traiettoria del sistema in qualunque direzione
	all'interno del range nel quale sono definiti. Solitamente hanno un 
	massimo e un minimo valore che non possono oltrepassare.
	"""
	def __init__(self, nome, value, initvalue, id):
		super().__init__(nome, value, id, initvalue)
		self.MPGOSname = "cPAR"


class X(Var):
	""" X è una classe che rappresenta le variabili delle ODE. """
	def __init__(self, nome, value, initvalue, id):
		super().__init__(nome, value, id, initvalue)
		self.MPGOSname = "X"


#--------------------------# DEFINIZIONE DEL PARSER PER ESTRAPOLARE DALL'XML IL SISTEMA DI ODE # --------------------------#


class Function:
	""" Classe che descrive una funzione """
	def __init__(self, nome, alg, io):
		self.nome = nome			 		   # nome della funzione
		self.eqname = self.nome.split(".")[-1] # nome che dovrà apparire nell'equazione formattata
		self.inputs = io['input']    		   # lista dei parametri in input
		self.outputs = io['output']  		   # lista dei parametri in output
		self.alg = alg		         		   # algoritmo che descrive la funzione

	def __str__(self):
		string = f"{self.nome}(input={self.inputs}, output={self.outputs}):\n" + \
			f"\t\t\t{self.alg}"
		return string


class Parser:
	"""
	Classe che rappresenta in parser per il file XML derivato da dumpXMLDAE.
	Il parser presenta funzioni in grado di parsare: le equazioni iniziali, 
	le equazioni normali, le ODE, gli algoritmi e le funzioni. Una volta fatto
	il parsing dei diversi oggetti vegono creati i rispettivi parametri X, sPAR,
	ACC, cPAR i quali corrispondono rispettivamente a: ACC -> algoritmi, 
	sPAR -> Equazioni iniziali costanti, cPAR -> Equazioni di assegnazione, X -> ODE.
	"""
	def __init__(self, xml_filename:str, workingdir:str):
		self.modelname = xml_filename.split(".")[-3] + "." + xml_filename.split(".")[-2]
		self.workingdir = workingdir
		self.root = ET.parse(xml_filename).getroot()
		self.varswithbind = []
		self.varswithoutbind = []
		self.initeqs = []
		self.ode = []
		self.algs = []
		self.equation = []
		self.functions = []

	def __str__(self) -> str:
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
		string += "\t}, Functions: {\n"
		for fun in self.functions:
			string += "\t\t{}\n".format(fun.__str__())
		string += "\t}\n)"
		return string

	def parsevar(self) -> None:
		""" Funzione di parsing di tutte le variabili presenti nel modello """
		for child in self.root.iter("variable"):
			t = [child.attrib['name'], None]
			for iter in child.iter("bindExpression"):
				t[1] = iter.attrib['string']
			if t[1] is None:
				self.varswithoutbind.append(t[0])
			else:
				self.varswithbind.append(tuple(t))

	def parseequations(self) -> None:
		"""
		Funzione di parsing di tutte le equazioni presenti nel modello. Nell'XML
		ogni equazione è descritta dal tag <equation> che contiene come testo
		principale la descrizione dell'equazione. Tutti gli altri tag figli 
		ci danno indicazioni sulle singole variabili utilizzate nell'equazione.
		Da queste possiamo distinguere tre tipologie di equazioni: le equazioni
		iniziali della forma x=<numero float>; le equazioni di assegnazione della
		forma x=y (con y concatenazione di lettere, numeri, operazioni e funzioni);
		le equazioni differenziali ordinarie della forma der(x) = y.
		"""
		for child in self.root.iter("equation"):
			text = child.text.strip()
			if re.match(INIT_EQ, text):
				if list(filter(lambda x: x.split("=")[0] == text.split("=")[0], self.initeqs)) == []:
					self.initeqs.append(text)
			elif re.match(ODE_EQ, text):
				self.ode.append(text)
			elif re.match(EQ_EQ, text):
				self.equation.append(text)
			elif re.match(ZERO_DER, text):
				modified_text = text.replace("der(", "").replace(")", "")
				if list(filter(lambda x: x.split("=")[0] == modified_text.split("=")[0], self.initeqs)) == []:
					self.initeqs.append(modified_text)

	def parsealgorithms(self) -> None:
		"""
		Funzione di parsing di tutti gli algoritmi presenti nel modello. Nell'XML
		solitamente abbiamo un solo tag <algorithm> che racchiude tutti gli algoritmi
		nel suo testo.
		"""
		for child in self.root.iter("algorithm"):
			text = child.text.replace("algorithm", "").replace(" ", "").strip()
			for subtext in text.split("\n"):
				self.algs.append(subtext.strip()[:-1])

	def parsefunctions(self) -> None:
		"""
		Funzione di parsing delle functions presenti nel modello. Nell'XML sono definite
		dal tag <functions> che racchiude tutte le funzioni. Python fortunatamente ci 
		mette e disposizione il metodo iter(<pattern>) che inserendo come pattern="function"
		ci preleva direttamente tutte le funzioni definite dal tag <function>. Il nome della
		funzione è presente nell'attributo 'name' del tag, mentre il testo della funzione
		è presente nell'unico tag figlio di <function>, ossia <ModelicaInterpretation>.
		Per ogni funzione viene quindi creato un oggetto Function che prenderà in input:
		il nome della funzione; l'algoritmo della funzione; un dizionario diviso in input e 
		output della funzione.
		"""
		for child in self.root.iter("function"):
			children = list(child)[0]
			functext = children.text
			io = {"input": [], "output": []}
			for line in functext.split("\n"):
				if re.match(INPUT_F, line): io["input"].append(line.split(" ")[-1][:-1].strip())
				elif re.match(OUTPUT_F, line): io["output"].append(line.split(" ")[-1][:-1].strip())
			alg = ""
			start, end = False, False
			for line in functext.split("\n"):
				if end: break
				if re.match(START_ALG, line): start = True
				elif re.match(END, line): end = True
				if start and not end and "algorithm" not in line:
					alg += line + "\n"
			f = Function(child.attrib['name'], alg[:-1], io)
			self.functions.append(f)

	def parse(self) -> None:
		"""
		La funzione parse, mette insieme tutti le funzioni di parsing per eseguire
		un parsing completo di tutto il modello e creare le rispettive istanze.
		"""
		self.parsevar()
		self.parseequations()
		self.parsealgorithms()
		self.parsefunctions()

	def createACC(self) -> List[ACC]:
		"""
		Prende la parte sinistra do quello che ha parsato 
		ed inserito nella variabile degli algoritmi e crea
		diverse istanze della classe ACC. Il motivo principale
		è che gli algoritmi in Modelica vengono eseguiti in 
		sequenza e dopo le equazioni, che a differenza sono
		eseguite in un vero e proprio parallelismo, per questo
		l'aggiornamento delle variabili 
		""" 
		accs = []
		accsdict = dict()
		for i, alg in enumerate(self.algs):
			splittedAlg = alg.split(":=")
			# Non è detto che l'algoritmo è della forma x := y
			# ma questo implica anche il fatto che non sia un
			# algoritmo. Dal momento che nell'XML sono formattati in questo modo
			try:
				lhs = splittedAlg[0].strip()
				rhs = splittedAlg[1].strip()
				f = lambda x: x.split("=")[0].strip() == lhs
				ieqs = list(filter(lambda x: f(x), self.initeqs))
				acc = ACC(lhs, rhs, ieqs[0].split("=")[1].strip() if ieqs else rhs, i)
				accs.append(acc)
				accsdict[lhs] = acc
			except IndexError:
				pass

		return accs, accsdict
	
	def create_sPAR(self) -> List[sPAR]:
		"""
		Prende tutte le equazioni iniziali e considera solo quelle 
		la cui parte sinistra non compare in alcuna equazione o algoritmo.
		Ossia prende tutte quelle il cui valore rimane costante per 
		tutto il tempo della simulazione e nelle varie simulazioni. 
		"""
		def check_contains_ieq_in_eq(ieq, eqs, algs):
			"""
			Controlla se la parte sinistra di ieq appare com
			parte sinitra di un'altra equazione presente nella sezione
			delle equazioni oppure degli algoritmi.
			:param str ieq: parte sinitra di una equazione iniziale 
			:param List[str] eqs: insieme di equazioni
			:param List[str] algs: insieme di equazioni della sezione algorithm
			:return: true / false
			"""
			feqs = lambda x: ieq in x.split("=")[0].strip()
			falg = lambda x: ieq == x.split(":=")[0].strip()
			return any(list(map(lambda x: feqs(x), eqs))) or any(list(map(lambda x: falg(x), algs)))

		spars = []
		sparsdict = dict()
		for i, ieq in enumerate(self.initeqs):
			try:
				splittedIEQ = ieq.split("=")
				lhs = splittedIEQ[0].strip()
				rhs = splittedIEQ[1].strip()
				if not check_contains_ieq_in_eq(lhs, self.ode + self.equation, self.algs):
					spar = sPAR(lhs, rhs, None, i)
					spars.append(spar)
					sparsdict[lhs] = spar
			except IndexError:
				pass
		
		# E' possibile che le equazioni iniziali si trovino anche tra le variabili con bindExpression
		j = spars[-1].id + 1
		for vbind in self.varswithbind:
			try:
				spar = sPAR(vbind[0], str(float(vbind[1])), None, j)
				spars.append(spar)
				sparsdict[vbind[0]] = spar
				j += 1
			except ValueError:
				pass
		
		return spars, sparsdict

	def create_cPAR(self):
		"""
		I parametri cPAR sono quelli che cambiano nel tempo e di conseguenza
		li andiamo a prendere nella sezione equation, ma che non siano le 
		equazioni differenziali, ma le aEquation ossia le equazioni di associazione.
		"""
		cpars, spars = [], []
		cparsdict, sparsdict = dict(), dict()
		j = 0
		k = 0
		for eq in self.equation:
			splittedEQ = eq.split("=")
			lhs = splittedEQ[0].strip()
			rhs = splittedEQ[1].strip()
			try:
				spar = sPAR(lhs, str(float(rhs)), None, j)
				spars.append(spar)
				sparsdict[lhs] = spar
				j += 1
			except ValueError:
				cpar = cPAR(lhs, rhs, None, k)
				cpars.append(cpar)
				cparsdict[lhs] = cpar
				k += 1
		
		return cpars, cparsdict, spars, sparsdict

	def createX(self):
		"""
		Crea il vettore delle variabili che compaiono nella parte sinistra
		delle equazioni differenziali. Queste verranno prese nella lista
		delle ODE parsate dall'XML precedentemente
		"""
		xs = []
		xsdict = dict()
		for i, ode in enumerate(self.ode):
			splittedODE = ode.split("=")
			lhs = splittedODE[0].strip().split("(")[-1].split(")")[0].strip()
			rhs = splittedODE[1].strip()
			# Prendo il valore iniziale, se esiste,
			# della variabile da derivare
			initvalue = 0.0
			for ieqs in self.initeqs:
				if lhs in ieqs: initvalue = ieqs.split("=")[1].strip()
			x = X(lhs, rhs, initvalue, i)
			xs.append(x)
			xsdict[lhs] = x
		
		return xs, xsdict
	
	def formatequationwfunc(self):
		""" 
		Formatta le equazioni che presentano funzioni. Tutte le equazioni vengono formattate nel
		seguente modo: partendo dalla chiamata a funzione presente nelle equazioni/algoritmi, 
		solitamente indicata con <modello>.Functions.<nome_funzione>(...), questa viene semplicemente
		trasformata in <nome_funzione>(...), presupponendo il fatto che MPGOS supporti le funzioni utilizzate.
		"""
		def replacewithfunction(nome:str, eqnome:str, string:str, pattern:str) -> str:
			""" Tale funzione rimpiazza tutte le funzioni presenti con la definizione per il format """
			searchLists = re.findall(pattern, string)
			replacedLists = searchLists
			try:
				replacedLists = list(map(lambda x: x.replace(nome, eqnome), searchLists))
				for j, e in enumerate(replacedLists):
					string = string.replace(searchLists[j], e)
			except IndexError:
				pass
			return string

		for fun in self.functions:
			nome 	  = fun.nome
			eqnome 	  = fun.eqname
			pattern   = r"{}".format(nome)
			i = 0
			# Formattiamo le equazioni
			for i in range(0, len(self.equation)):
				self.equation[i] = replacewithfunction(nome, eqnome, self.equation[i], pattern)
			# Formattiamo gli algoritmi
			for i in range(0, len(self.algs)):
				self.algs[i] = replacewithfunction(nome, eqnome, self.algs[i], pattern)
			#Formattiamo le ODE
			for i in range(0, len(self.ode)):
				self.ode[i] = replacewithfunction(nome, eqnome, self.ode[i], pattern)

	def buildParamValue(self, params:List[Var], paramsdict:dict):
		"""
		Prende ogni parametro e ne modifica il campo value
		inserendo al posto dell'equazione già presente in formato leggibile, 
		un'equazione in formato MPGOS, ossia facendo riferimento a tutte le variabili
		tramite il proprio MPGOSname. Quindi se abbiamo un'equazione di questo tipo
		a = b + c, con MPGOSname(b) = Y[1] e MPGOSname(c) = Z[2] -> a = Y[1] + Z[2].
		:param params: Lista dei parametri composti da xs, accs, spars, cpars
		"""
		for param in params:
			value = param.value
			variables = re.findall(r"\w+\.+\w+", value)
			for var in variables:
				for dicts in paramsdict:
					try:
						value = value.replace(var, dicts[var].createMPGOSname())
						break
					except KeyError:
						pass
				
			param.setvalue(value)

	def buildSystem(self) -> tuple:
		"""
		Funzione che formatta il sistema di ODE e ritorna la lista di tutti i 
		parametri con value formattato in maniera "vettoriale"
		"""
		self.formatequationwfunc()	                         # Formatto le equazioni inserendo le funzioni
		accs, accsdict   			  = self.createACC()	 # Prendo i parametri ACC
		xs, xsdict                    = self.createX()		 # Prendo i parametri X
		spars, sparsdict 	          = self.create_sPAR()	 # Prendo i parametri sPAR
		cpars, cparsdict, sparstmp, _ = self.create_cPAR()	 # Prendo i parametri cPAR
		lastidx = spars[-1].id
		for i, tmp in enumerate(sparstmp): tmp.setid(lastidx + i  + 1)
		spars += sparstmp
		sparsdict = {x.nome: x for x in spars}
		paramsdict = [
			#    0,        1,         2,         3
			xsdict, accsdict, sparsdict, cparsdict
		]
		self.buildParamValue(accs, paramsdict)
		self.buildParamValue(xs, paramsdict)
		self.buildParamValue(spars, paramsdict)
		self.buildParamValue(cpars, paramsdict)
		return accs, xs, spars, cpars


#--------------------------# DEFINIZIONE DELLA CLASSE PER LA BUILD DELLA DEFINIZIONE DEL SISTEMA # --------------------------#


class SystemDefinition:
	""" Classe per la costruzione della definizione del sistema (File SystemDefinition.cuh) """
	def __init__(self, xmlfile, workdir):
		self.xmlfile = xmlfile
		self.workdir = workdir
		self.parser = Parser(xmlfile, workdir)
		self.parser.parse()
		self.accs, self.xs, self.spars, self.cpars = self.parser.buildSystem() # Prende tutti i parametri

	def buildMPGOS_PerThread_OdeFunction(self):
		""" Formatta la stringa per la funzione PerThread_OdeFunction """
		global MPGOS_PerThread_OdeFunction
		string = Var.createCodeLineMPGOS(self.xs)
		return MPGOS_PerThread_OdeFunction % (string)
	
	def buildMPGOS_PerThread_EventFunction(self):
		""" Formatta la stringa per la funzione PerThread_EventFunction """
		global MPGOS_PerThread_EventFunction
		return MPGOS_PerThread_EventFunction % ("")

	def buildMPGOS_PerThread_ActionAfterEventDetection(self):
		""" Formatta la stringa per la funzione PerThread_ActionAfterEventDetection """
		global MPGOS_PerThread_ActionAfterEventDetection
		return MPGOS_PerThread_ActionAfterEventDetection % ("")

	def buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(self):
		""" Formatta la stringa per la funzione PerThread_ActionAfterSuccessfulTimeStep """
		global MPGOS_PerThread_ActionAfterSuccessfulTimeStep
		string = Var.createCodeLineMPGOS(self.accs, self.cpars)
		return MPGOS_PerThread_ActionAfterSuccessfulTimeStep % (string)

	def buildMPGOS_PerThread_Initialization(self):
		""" Formatta la stringa per la funzione PerThread_Initialization """
		global MPGOS_PerThread_Initialization
		return MPGOS_PerThread_Initialization % ("")

	def buildMPGOS_PerThread_Finalization(self):
		""" Formatta la stringa per la funzione PerThread_Finalization """
		global MPGOS_PerThread_Finalization
		return MPGOS_PerThread_Finalization % ("")

	def getparameters(self) -> list:
		""" Ritorna la lista dei parametri """
		return [self.accs, self.xs, self.spars, self.cpars]

	def createSystemDefinitionFile(self):
		""" Crea il file <Model>_SystemDefinition.cuh nel quale è presente il sistema di ODE """
		global MPGOS_Model_SystemDefinition
		functions = "{}\n{}\n{}\n{}\n{}\n{}\n".format(
			self.buildMPGOS_PerThread_OdeFunction(),
			self.buildMPGOS_PerThread_EventFunction(),
			self.buildMPGOS_PerThread_ActionAfterEventDetection(),
			self.buildMPGOS_PerThread_ActionAfterSuccessfulTimeStep(),
			self.buildMPGOS_PerThread_Initialization(),
			self.buildMPGOS_PerThread_Finalization()
		)
		directory, model = self.parser.modelname.split("/")[-1].split(".")
		newdir = path.abspath(directory) + "/" + model + "_MPGOS"
		try:
			os.mkdir(newdir)
		except Exception:
			pass
		currentdir = os.getcwd()
		os.chdir(newdir)
		with open(model + "_SystemDefinition.cuh", mode="w") as stream:
			stream.write(MPGOS_Model_SystemDefinition % (model, model, functions))
		os.chdir(currentdir)


if __name__ == "__main__":
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
		sys.exit(1)
