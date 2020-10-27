from exceptions import builtExceptions
from tagclasses import tagclasses


#--------------------------# DEFINIZIONE DELLE CLASSI CHE RAPRESENTANO TAG ALL'INTERNO DELL'XML   # --------------------------#		


class VariableCategory:
	STATE                 = "state"
	DERIVATIVE            = "derivative"
	ALGEBRAIC             = "algebraic"
	INDEPENDENT_PARAMETER = "independentParameter"
	INDEPENDENT_CONSTANT  = "independentConstant"

	@staticmethod
	def getcategory(cat_str):
		try:
			return {
				"state"                : VariableCategory.STATE,
				"derivative"           : VariableCategory.DERIVATIVE,
				"independentParameter" : VariableCategory.INDEPENDENT_PARAMETER,
				"independentConstant"  : VariableCategory.INDEPENDENT_CONSTANT,
				"algebraic"            : VariableCategory.ALGEBRAIC
			}[cat_str]
		except KeyError:
			raise builtExceptions.VariableCategoryNotFound(cat_str)


class ScalarVariable:
	""" Rappresenta una ScalarVariable all'interno XML """
	def __init__(self, name,			# Nome univoco della variabile
                       variability,	    # Indica la variabilità della variabile (constant, parameter, ..., continuous)
                       alias,			# Inserisce l'alias, se esiste, settando propriamente il valueIdentifier	
                       categoryType,    # Categoria alla quale appartiene la variabile 
                       qualifiedName,   # Il nome al quale fa riferimento la variabile.
                       				    # È importante notare che il qualifiedName sia uguale per variabili che puntano alla stessa variaible
                       				    # ad esempio la variabile "x" e la variabile "der(x)" hanno lo stesso qN = "x"
                       description=None # Descrizione opzionale della variabile
				):
		self.name 			 = name
		self.variability     = variability
		self.alias 			 = alias
		self.categoryType    = categoryType
		self.qualifiedName   = qualifiedName
		self.description     = description


	def __str__(self): return type(self).__name__ + "(" + ", ".join([f"{k}={v}" for k, v in self.__dict__.items()]) + ")"

	@staticmethod
	def getvar(var_list, var_name):
		try:
			return list(filter(lambda x: x.name == var_name, var_list))[0]
		except Exception:
			return None


"""
Valori tolti:
min=None,	 # Valore minimo per la variabile
max=None,	 # Valore massimo per la variabile
"""
class RealScalarVariable(ScalarVariable):
	""" Rappesenta una variabile Real """
	def __init__(self, start=None,	 # Valore di partenza. Solo se presente start nel file modelica
					   fixed=False,	 # Definisc il comportamento di start
					   *scalarvalue  # Dati per ScalarVariable
				):
		super().__init__(*scalarvalue)
		self.start = start
		self.fixed = fixed


	def setstart(self, value):
		self.start = value
		self.fixed = True

class BooleanScalarVariable(ScalarVariable):
	""" Rappresenta una variabile Boolean """
	def __init__(self, start=None, fixed=None, *scalarvalue):
		super().__init__(*scalarvalue)
		self.start = start
		self.fixed = fixed

	@staticmethod
	def bool2str(bool_value): return "1" if bool_value else "0"


	def setstart(self, value):
		self.start = value
		self.fixed = True


class IntegerScalarVariable(ScalarVariable):
	""" Rappresenta una variabile Integer """
	def __init__(self, start=None, fixed=None, *scalarvalue):
		super().__init__(*scalarvalue)
		self.start = start
		self.fixed = fixed

	def setstart(self, value):
		self.start = value
		self.fixed = True
	

VARIABLES = {
	"Real"    : RealScalarVariable,
	"Boolean" : BooleanScalarVariable,
	"Integer" : IntegerScalarVariable
}


#--------------------------# DEFINIZIONE FUNZIONE DI PARSING DELLE VARIABILI   # ----------------------------------------- #	


def getvariableclass(tag):
	""" Dato in input un tag, ritorna un oggetto che rappresenta il tipo della variabile """
	try:
		return VARIABLES[tag.tag]
	except KeyError:
		raise builtExceptions.VariableTypeNotFound(tag.tag)


def _parsetag_var(scalar_variable_tag):
	"""
	Funzione di parsing delle variabili. Nell'XML esse sono contenute tutte all'interno
	di ModelVariables, ed ognuna è identificata da un tag <ScalarVariable>...</ScalarVariable>.
	Ogni variabile sarà un'oggetto di una classe che estende ScalarVariable e che quindi 
	conterrà tutti gli attributi presenti nel tag stesso. Ovviamente tra gli attributi
	saranno presenti anche informazioni parsate successivamente. 
	"""
	# Come prima cosa si prendono gli attributi di interesse
	attributes = [
		scalar_variable_tag.attrib['name'],							 				   # name
		scalar_variable_tag.attrib['variability'],									   # variability
		scalar_variable_tag.attrib['alias'],										   # alias
		VariableCategory.getcategory(scalar_variable_tag[3].text),					   # variableCategory
		tagclasses.QualifiedName(scalar_variable_tag[1]).__str__()			           # qualifiedName
	]
	# Dopodiché riconosciamo il tipo della variabile (Real, Boolean, Integer) e costruiamo l'istanza associata
	fixed = scalar_variable_tag[0].attrib.get('fixed')
	start = scalar_variable_tag[0].attrib.get('start')
	return getvariableclass(scalar_variable_tag[0])(start, fixed, *attributes)


#--------------------------# DEFINIZIONE DI PARAMETRI E DELLE VARIABILI NECESSARIE AD MPGOS   # -------------------------- #				           						   


class Var:
	""" Classe che descrive una variabile qualsiasi, con nome, valore e valoreiniziale se esiste """
	def __init__(self, nome, id, qualifiedName, alias, initvalue=None):
		self.nome = nome
		self.init = initvalue
		self.qualifiedName = qualifiedName
		self.alias = alias
		self.MPGOSname = "Var"
		self.id = id

	def __str__(self):
		string = f"{self.nome}(qN={self.qualifiedName}, alias={self.alias}, iValue={self.init}, id={self.id}, MPGOSname={self.createMPGOSname()})"
		return string

	@staticmethod
	def forEach(l, func):
		for x in l:
			func(x)

	def createMPGOSname(self):
		return self.MPGOSname + "[" + str(self.id) + "]"
	
	def setid(self, id:int):
		self.id = id


class ACC(Var):
	"""
	Parametri programmabili dall'utente e multi-purpose. Sono
	molto efficienti dal momento che tramite essi possono essere
	memorizzate molte informazioni quali traiettorie o altri dati
	senza doverli salvare ogni volta nel dense output. Verranno 
	estrapolati dall'XML come "algebraic". ACC viene utilizzata 
	per quelle variabili che hanno valori Reali.
	"""
	def __init__(self, *varparam):
		super().__init__(*varparam)
		self.MPGOSname = "ACC"


class ACCi(Var):
	""" Sono esattamente le variabili ACC ma hanno valori interi. """
	def __init__(self, *varparam):
		super().__init__(*varparam)
		self.MPGOSname = "ACCi"


class sPAR(Var):
	"""
	Sono i parametri condivisi tra l'host (CPU) e il device (GPU).
	Essi sono principalmente parametri costanti che non variano 
	durante la simulazione, oppure tra diverse simulazioni. 
	Verranno estrapolati dall'XML come IndipendentParameter/Constants
	"""
	def __init__(self, *varparam):
		super().__init__(*varparam)
		self.MPGOSname = "sPAR"


class sPARi(Var):
	""" Sono esattamente le variabili sPAR ma hanno valori interi. """
	def __init__(self, *varparam):
		super().__init__(*varparam)
		self.MPGOSname = "sPARi"


class cPAR(Var):
	"""
	A differenza dei parametri condivisi, i parametri di controllo
	hanno la principale capacità di cambiare nel corso delle simulazioni
	di modo da dirigere la traiettoria del sistema in qualunque direzione
	all'interno del range nel quale sono definiti. Solitamente hanno un 
	massimo e un minimo valore che non possono oltrepassare.
	"""
	def __init__(self, *varparam):
		super().__init__(*varparam)
		self.MPGOSname = "cPAR"


class X(Var):
	""" 
	X è una classe che rappresenta le variabili delle ODE.
	Verranno estrapolati dall'XML come state. 
	"""
	def __init__(self, *varparam):
		super().__init__(*varparam)
		self.MPGOSname = "X"


class F(Var):
	"""
	F è la classe che rappresenta la parte sinistra delle ODE.
	Ossia la parte con der(x). Verranno estrapolate dall'XML
	come "derivative"
	""" 
	def __init__(self, *varparam):
		super().__init__(*varparam)
		self.MPGOSname = "F"