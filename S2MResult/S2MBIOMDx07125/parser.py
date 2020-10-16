import xml.etree.ElementTree as ET
import re


#--------------------------# DEFIINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


INIT_EQ = r"\w+\.*\w+\s*=\s*\d+\.\d+"
ODE_EQ  = r"der[(].*[)]\s*=.*[(+*)-]+"
EQ_EQ   = r"\w+\.*\w+\s*=.*[(+*)-]+"

				           
#--------------------------# DEFINIZIONE DEL PATTERN DELLE FUNZIONI DA UTILIZZARE IN MPGOS    # --------------------------#
				           

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


#--------------------------# DEFINIZIONE DI PARAMETRI E DELLE VARIABILI NECESSARIE AD MPGOS   # --------------------------#
				           						   

class Var:
	def __init__(self, nome, initvalue=None):
		self.nome = nome
		self.init = initvalue

class ACC(Var):
	"""
	Parametri programmabili dall'utente e multi-purpose. Sono
	molto efficienti dal momento che tramite essi possono essere
	memorizzate molte informazioni quali traiettorie o altri dati
	senza doverli salvare ogni volta nel dense output.
	"""
	def __init__(self, nome, initvalue):
		super().__init__(nome, initvalue)

class sPAR(Var):
	"""
	Sono i parametri condivisi tra l'host (CPU) e il device (GPU).
	Essi sono principalmente parametri costanti che non variano 
	durante la simulazione, oppure tra diverse simulazioni. 
	"""
	def __init__(self, nome, initvalue):
		super().__init__(nome, initvalue)

class cPAR(Var):
	"""
	A differenza dei parametri condivisi, i parametri di controllo
	hanno la principale capacità di cambiare nel corso delle simulazioni
	di modo da dirigere la traiettoria del sistema in qualunque direzione
	all'interno del range nel quale sono definit. Solitamente hanno un 
	massimo e un minimo valore che non possono oltrepassare.
	"""
	def __init__(self, nome, initvalue):
		super().__init__(nome, initvalue)

class X(Var):
	""" X è una classe che rappresenta le variabili delle ODE. """
	def __init__(self, nome, initvalue):
		super().__init__(nome, initvalue)


#--------------------------# DEFINIZIONE DEL PARSER PER ESTRAPOLARE DALL'XML IL SISTEMA DI ODE # --------------------------#
				       

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
			elif re.match(ODE_EQ, text):
					self.ode.append(text)
			elif re.match(EQ_EQ, text):
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


if __name__ == "__main__":
	p = Parser("S2MBIOMDx07125.model_0000001.xml")
	p.parse()
	print(p)
