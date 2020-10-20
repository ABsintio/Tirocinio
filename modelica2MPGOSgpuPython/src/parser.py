import xml.etree.ElementTree as ET
import re
import os
from os import path
import sys
from notifier import Notifier, notifier
import time


#--------------------------# DEFINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


INIT_EQ      = r"\w+\.*\w+\s*=\s*\d+\.\d+"				 # Pattern per matching delle equazioni iniziali
ODE_EQ       = r"der[(].*[)]\s*=.*[(+*)-]+"	    		 # Pattern per matching delle ODE
EQ_EQ        = r"\w+\.*\w+\s*=.*[(+*)-]+"				 # Pattern per matching delle Equazioni di assegnazione
INPUT_F      = r"\s+input\s*.*"				    		 # Pattern per matching degli input delle funzioni/classi/model
OUTPUT_F     = r"\s+output.*"							 # Pattern per matching degli output delle funzioni/classi/model
START_ALG    = r"\s*algorithm"							 # Pattern per matching dello start di una algoritmo
END 	     = r"\s*end.*"								 # Pattern per matching della fine di una funzione/classe/model
ZERO_DER     = r"\s*der[(].*[)]\s*=\s*0.0"				 # Pattern per matching delle derivate pari a 0
NOTIFICATION = True if int(sys.argv[-1]) == 1 else False


#--------------------------# DEFINIZIONE DI PARAMETRI E DELLE VARIABILI NECESSARIE AD MPGOS   # --------------------------#				           						   


class Var:
	""" Classe che descrive una variabile qualsiasi, con nome, valore e valoreiniziale se esiste """
	def __init__(self, nome, value, id, initvalue=None):
		self.nome = nome
		self.value = value
		self.init = initvalue
		self.MPGOSname = "Var"
		self.id = id

	def __str__(self):
		string = f"{self.nome}(value={self.value}, iValue={self.init}, id={self.id}, MPGOSname={self.createMPGOSname()})"
		return string

	@staticmethod
	def forEach(l, func):
		for x in l:
			func(x)
	
	@staticmethod
	def createCodeLineMPGOS(*l):
		lista = []
		for x in l:
			lista.append("".join(list(map(lambda y: f"\t{y.createMPGOSname()} = {y.value};\n", x))))
		return "".join(lista)

	def createMPGOSname(self):
		return self.MPGOSname + "[" + str(self.id) + "]"
	
	def setid(self, id:int):
		self.id = id
	
	def setvalue(self, value:str):
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
	def __init__(self, xml_filename):
		self.modelname = xml_filename.split(".")[-3] + "." + xml_filename.split(".")[-2]
		self.root = ET.parse(xml_filename).getroot()
		self.varswithbind = []
		self.varswithoutbind = []
		self.initeqs = []
		self.ode = []
		self.algs = []
		self.equation = []
		self.functions = []

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
		string += "\t}, Functions: {\n"
		for fun in self.functions:
			string += "\t\t{}\n".format(fun.__str__())
		string += "\t}\n)"
		return string

	def parsevar(self):
		""" Funzione di parsing di tutte le variabili presenti nel modello """
		for child in self.root.iter("variable"):
			t = [child.attrib['name'], None]
			for iter in child.iter("bindExpression"):
				t[1] = iter.attrib['string']
			if t[1] is None:
				self.varswithoutbind.append(t[0])
			else:
				self.varswithbind.append(tuple(t))

	def parseequations(self):
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
				element = list(filter(lambda x: x.split("=")[0] == text.split("=")[0], self.initeqs))
				if element == [] or text.split("=")[-1].strip() != "0.0":
					try:
						self.initeqs.remove(element[-1])
					except Exception: 
						pass
					self.initeqs.append(text)
			elif re.match(ODE_EQ, text):
				self.ode.append(text)
			elif re.match(EQ_EQ, text):
				self.equation.append(text)
			elif re.match(ZERO_DER, text):
				modified_text = text.replace("der(", "").replace(")", "")
				if list(filter(lambda x: x.split("=")[0] == modified_text.split("=")[0], self.initeqs)) == []:
					self.initeqs.append(modified_text)

	def parsealgorithms(self):
		"""
		Funzione di parsing di tutti gli algoritmi presenti nel modello. Nell'XML
		solitamente abbiamo un solo tag <algorithm> che racchiude tutti gli algoritmi
		nel suo testo.
		"""
		for child in self.root.iter("algorithm"):
			text = child.text.replace("algorithm", "").replace(" ", "").strip()
			for subtext in text.split("\n"):
				self.algs.append(subtext.strip()[:-1])

	def parsefunctions(self):
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

	def parseevent(self):
		pass

	@notifier(
		NOTIFICATION,
		"Starting Parser", 
		"modelica2GPU incomincia a parsare l'XML in input", 
		"Ending Parser"  , 
		"modelica2GPU ha terminato di parsare l'XML in input"
	)
	def parse(self):
		"""
		La funzione parse, mette insieme tutti le funzioni di parsing per eseguire
		un parsing completo di tutto il modello e creare le rispettive istanze.
		"""
		self.parsevar()
		self.parseequations()
		self.parsealgorithms()
		self.parsefunctions()
		self.parseevent()

	def createACC(self):
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
	
	def create_sPAR(self):
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

	def buildParamValue(self, params, paramsdict):
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

	@notifier(
		NOTIFICATION,
		"Build System", 
		"Creazione e formattazione dei parametri ACC, sPAR, cPAR e X",
		"Build System",
		"Terminata fase di creazione e formattazione"
	)
	def buildSystem(self):
		"""
		Funzione che formatta il sistema di ODE e ritorna la lista di tutti i 
		parametri con value formattato in maniera "vettoriale"
		"""
		self.formatequationwfunc()	                         # Formatto le equazioni inserendo le funzioni
		print(self)
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