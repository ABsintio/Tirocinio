import sys

# Controllo preliminare dei moduli richiesti
try:
    import pycuda.driver as cuda 
    import pycuda.autoinit
except ImportError:
    print("Errore: il modulo pycuda non è stato installato. Si prega di installarlo con")
    print("pip install pycuda oppure pip3 install pycuda")
    sys.exit(1)

try:
    import notify2
except ImportError:
    print("Errore: il modulo notify2 non è stato installato. Si prega di installarlo con")
    print("pip install notify2 oppure pip3 install notify2")
    sys.exit(1)

try:
    import coloredlogs
except ImportError:
    print("Errore: il modulo coloredlogs non è stato installato. Si prega di installarlo con")
    print("pip install coloredlogs oppure pip3 install coloredlogs")
    sys.exit(1)

import yaml
from utils import logger, notifier
import xml.etree.ElementTree as ET
import os
import subprocess
import re
import time
import argparse
import warnings
warnings.filterwarnings("ignore") # Sopprimo tutti gli warning inutili

# Parso gli argomenti da CMDLine
argument_parser = argparse.ArgumentParser()
argument_parser.add_argument("-l", "--logger", help="Path del file di configurazione del logger", type=str, required=True)
argument_parser.add_argument("-c", "--config", help="Path del file di configurazione di modelica2GPU", type=str, required=True)
args = argument_parser.parse_args()
config_log = args.logger
config_m2g = args.config


tmp_logger = logger.Logger(None, ".", config_log, False)
coloredlogs.install(level="DEBUG", logger=tmp_logger.clogger)
start = time.time()

def createXML(workingdir, modelfilename, omlibrary):
    """ Crea l'XML tramite il comando del compilatore openmodelica e ritorna il nome del file """
    try:
        cwd = os.getcwd()
        # Entro nella directory desiderata nella quale salvare l'XML
        os.chdir(workingdir)
        # Controllo che la directory per la libreria di modelica installata sia vera
        assert os.path.isdir(omlibrary) is not None, "Non esistono versioni di modelica installate nel sistema"
        # Creo la stringa per la compilazione
        compile_string = "omc +s --simCodeTarget=XML {model} {others} {modelicalib}".format(
            model=modelfilename,
            others=" ".join([x for x in os.listdir(".") if x.endswith(".mo") and x != modelfilename]),
            modelicalib=omlibrary.replace(" ", "\ ") + "package.mo"
        )
        result = subprocess.run(compile_string, check=True, shell=True)
        os.chdir(cwd)
        return os.path.join(workingdir, modelfilename.replace("mo", "xml"))
    except subprocess.CalledProcessError:
        tmp_logger.error("Non è stato possibile creare l'XML", "Non è stato possibile creare l'XML")
    except Exception as e:
        assert True == False, e.args[0]


def get_tolerance_fromXML(xmlfile):
    """ Ritorna la tolleranza """
    root = ET.parse(xmlfile).getroot()
    return float(root[1].attrib['tolerance'])


def getdefaultoptions(nevents, nstates, xmlfile):
    """ Restituisce una lista di opzioni di default """
    # Come prima cosa dobbiamo prendere la CUDA capability della GPU di default
    device = cuda.Device(0) # Prendo il primo device disponibile
    major, minor = device.compute_capability()
    # Infine settiamo gli attributi rimanenti
    numberOfThreads            = 1
    numberOfProblems           = numberOfThreads
    numberOfDenseOutput        = 1000
    threadsPerBlock            = 64
    initialTimeStep            = 1.0e-2
    preferSharedMemory         = 1
    maximumTimeStep            = 1.0e+6
    minimumTimeStep            = 1.0e-14
    events_directions          = [0 for _ in range(nevents)]
    denseOutputMinumumTimeStep = 0.0
    denseOutputSaveFrequency   = 1
    tolerance                  = [get_tolerance_fromXML(xmlfile) for _ in range(nstates)]
    timeDomainStart            = 0.0
    timeDomainEnd              = 10.0
    return [
        major, minor,
        numberOfThreads,            numberOfProblems,  numberOfDenseOutput,
        threadsPerBlock,            initialTimeStep,   preferSharedMemory,
        maximumTimeStep,            minimumTimeStep,   events_directions, 
        denseOutputMinumumTimeStep, denseOutputSaveFrequency, tolerance,         
        timeDomainStart, timeDomainEnd
    ], device


def checkGPUexists(ccapability):
    """ Controlla l'esistenza della GPU con la capability data in input """
    assert cuda.Device.count() > 0, "Non sembrano essere presenti GPU nVidia sul dispositivo"
    capabilities = [cuda.Device(count - 1).compute_capability() for count in range(cuda.Device.count())]
    assert any(list(filter(lambda x: x == ccapability, capabilities))), "La GPU scelta non esiste"


def checkconfig(config_dict):
    """ Controlla che tutti i campi siano stati settati correttamente """
    m2g_conf = config_dict['modelica2gpu']
    # Uno tra i due campi deve essere inserito, altrimenti non è corretto
    msg = "Uno tra i due campi, generateXML e xml, deve essere inserito diverso da null"
    assert m2g_conf['generateXML'] is not None or m2g_conf['xml'] is not None, msg
    # Inoltre generateXML deve essere un booleano
    assert isinstance(m2g_conf['generateXML'], bool), "generateXML deve avere valore booleano"
    # Se l'XML è stato settato controllo che sia un file esistente
    if m2g_conf['xml'] is not None: assert os.path.isfile(m2g_conf['xml']), f"l'XML {m2g_conf['xml']} non esiste"
    # Controllo che la cartella data come wd sia effettivamente una cartella
    assert os.path.isdir(m2g_conf['workingdir']), f"{m2g_conf['workingdir']} non è una cartella"
    # Controllo che il model filename sia un file presente nella cartella wd
    if m2g_conf['generateXML']:
        msg = f"il modello {m2g_conf['modelfilename']} non è nella workingdir dichiarata"
        assert os.path.isdir(m2g_conf['omlibrary']), "La directory per la libreria Modelica non esiste"
        assert os.path.isfile(os.path.join(m2g_conf['workingdir'], m2g_conf['modelfilename'])), msg
    # Controllo che notifier e logger siano campi booleani
    n, l = m2g_conf['notifier'], m2g_conf['filelogger']
    assert isinstance(n, bool) and isinstance(l, bool), "I campi notifier e logger devono essere booleani" 

    builder_config = config_dict['builder']
    # La source dir per MPGOS deve esistere
    src_dir = builder_config['MPGOSsourcedir']
    assert os.path.isdir(src_dir), f"Il path alla directory SourceDir di MPGOS è errato: {src_dir}"
    # Il campo usedefaultoption deve essere booleano
    assert isinstance(builder_config['usedefaultoptions'], bool), "Il campo userdefaultoptions deve essere di tipo bool"
    # Se il campo userdefaultoptions è False allora tutti i restanti devono essere settati e interi
    if not builder_config['usedefaultoptions']:
        assert isinstance(builder_config['gpu']['major'], int) and \
               isinstance(builder_config['gpu']['minor'], int)  and \
               isinstance(builder_config['modeldefinition']['numberOfProblems'], int) and \
               isinstance(builder_config['modeldefinition']['numberOfThreads'], int) and \
               isinstance(builder_config['modeldefinition']['numberOfDenseOutput'], int) and \
               isinstance(builder_config['modeldefinition']['threadsPerBlock'], int) and \
               isinstance(builder_config['modeldefinition']['preferSharedMemory'], int) and \
               isinstance(builder_config['modeldefinition']['maximumTimeStep'], float) and \
               isinstance(builder_config['modeldefinition']['minimumTimeStep'], float) and \
               isinstance(builder_config['modeldefinition']['denseOutputMinimumTimeStep'], float) and \
               isinstance(builder_config['modeldefinition']['denseOutputSaveFrequency'], int) and \
               isinstance(builder_config['modeldefinition']['timeDomainStart'], float) and \
               isinstance(builder_config['modeldefinition']['timeDomainEnd'], float), \
               "Se il campo userdefaultoptions è False allora tutti i restanti devono essere settati e interi"
        # Controlla che la GPU settata esista
        checkGPUexists((builder_config['gpu']['major'], builder_config['gpu']['minor']))


def getnumevents(xmlfile):
    """ Dall'XML prende il numero di eventi """
    root = ET.parse(xmlfile).getroot()
    return int(root.attrib['numberOfEventIndicators'])


def getnumstate(xmlfile):
    """ Dall'XML prende il numero di stati del sistema """ 
    root = ET.parse(xmlfile).getroot()
    return int(root.attrib['numberOfContinuousStates'])


def gpu_from_capability(ccapability):
    """ Dalla cuda capability, ottiene la GPU associata """
    capabilities = [cuda.Device(count - 1).compute_capability() for count in range(cuda.Device.count())]
    return cuda.Device(capabilities.index(ccapability))


def check_multiple_config(msg1, msg2, msg3, builder_config, keystring, dimension, tipo):
    """ Fa il check di parametri che potrebbero presentare sottoparametri come nel caso di eventDirection """
    subparam = builder_config[keystring]
    # Controllo che il parametro matcha con la dimensione dei valori che si vogliono controllare
    assert subparam is None and dimension == 0 or subparam is not None and dimension != 0, msg1
    if subparam is not None: # Se il parametro non è None
        all_param = subparam['all'] # Prendo l'indicatore all
        # Controlla se all sia None. Se lo è allora tutti gli altri devono essere settati
        if all_param is None:
            # Innanzitutto il numero di sottoparametri deve matchare la dimensione
            assert len(subparam) - 1 == dimension, msg2
            # E poi controlla che siano tutti di tipo "tipo"
            for k, v in subparam.items()[1:]:
                assert isinstance(v, tipo), msg3
        else:
            assert isinstance(all_param, tipo), msg3


def getGPUattr2str(attrs, gpu_name):
    """ Ritorna una stringa riguardo la GPU selezionata """
    max_len = max([len(f"{k} : {v}") for k, v in attrs.items()])
    string = ""
    string += f"DEVICE: {gpu_name}\n"
    string += "    " + "-"*(max_len + 5) + "\n"
    string += "    " + "|" + " "*(max_len + 3) + "|\n"
    for k, v in attrs.items():
        lenght = len(f"{k} : {v}")
        string += f"    | {k}: " + " "*(max_len - lenght + 2) + f"{v} |\n"
    string += "    " + "|" + " "*(max_len + 3) + "|\n"
    string += "    " + "-"*(max_len + 5) + "\n"
    return string


def conf_dict2str(conf_dict, gpu_attrs):
    """ Ritorna una stringa che descrive la configurazione settata """
    string = "CONFIGURAZIONE ESTRAPOLATA\n"
    for k, v in conf_dict.items():
        if k == "GPU information":
            string += getGPUattr2str(gpu_attrs, v.name())
        elif isinstance(v, list) and len(v) > 0:
            string += f"{k}:\n    " + "    ".join([f"{k}Value{count + 1}: {v[count]}\n" for count in range(len(v))])
        else: 
            string += f"{k}: {v}\n"
    return string


def get_modelica2GPU_configuration(config_file):
    """ Estrapola le informazioni dal file di configurazione """
    try:
        config_dict = yaml.load(open(config_file))
        # START LOG
        msg = f"Controllo della struttura del configuratore {config_file}"
        tmp_logger.debug(msg, msg)
        # END LOG
        checkconfig(config_dict)    
        # START LOG
        msg = f"Controllo andato a buon fine"
        tmp_logger.debug(msg, msg)
        # END LOG
        # START LOG
        msg = f"Ottenimento delle informazioni necessarie da {config_file}"
        tmp_logger.debug(msg, msg)
        # END LOG
        # Una volta fatto il check della struttura del configuratore estraggo le informazioni necessarie
        m2g_conf, builder_config = config_dict['modelica2gpu'], config_dict['builder']
        genXML = m2g_conf['generateXML']
        xmlfile = createXML(m2g_conf['workingdir'], m2g_conf['modelfilename'], m2g_conf['omlibrary']) if genXML else m2g_conf['xml']
        notifier, filelogger = m2g_conf['notifier'], m2g_conf['filelogger']
        modelname = xmlfile.split(".")[0].split("/")[-1]
        event_num, state_num = getnumevents(xmlfile), getnumstate(xmlfile)
        builder_options = [builder_config['MPGOSsourcedir']]
        device = None
        
        # Prima però dobbiamo controllare i parametri eventDirection e tolerance
        if not builder_config['usedefaultoptions']:
            # Check del parametro eventDirection
            check_multiple_config(
                "Il parametro eventDirection è None nonostante ci sono eventi, oppure viceversa",
                "Il numero di parametri eventDirection non matcha con il numero di eventi rilevati",
                "Tutti i parametri devono essere di tipo int",
                builder_config, 'eventDirection', event_num, int
            )

            # Check del parametro tolerance
            check_multiple_config(
                "Il parametro tolerance è None nonostante ci sono stati, oppure viceversa",
                "Il numero di parametri tolerance non matcha con il numero di stati rilevati",
                "Tutti i parametri devono essere di tipo float",
                builder_config, 'tolerance', state_num, float
            )

            builder_options += [
                builder_config['gpu']['major'], builder_config['gpu']['minor'],
                builder_config['modeldefinition']['numberOfThreads'], builder_config['modeldefinition']['numberOfProblems'],
                builder_config['modeldefinition']['numberOfDenseOutput'], builder_config['modeldefinition']['threadsPerBlock'],
                builder_config['modeldefinition']['initialTimeStep'], builder_config['modeldefinition']['preferSharedMemory'],
                builder_config['modeldefinition']['maximumTimeStep'], builder_config['modeldefinition']['minimumTimeStep'],
                list(builder_config['modeldefinition']['eventDirection'].values()), 
                builder_config['modeldefinition']['denseOutputMinimumTimeStep'], 
                builder_config['modeldefinition']['denseOutputSaveFrequency'], 
                list(builder_config['modeldefinition']['tolerance'].values()),

            ]
            device = gpu_from_capability((builder_options[1], builder_options[2]))
        else:
            def_opts = getdefaultoptions(event_num, state_num, xmlfile)
            builder_options += def_opts[0]
            device = def_opts[1]

        config_dict = {
            "xmlfile"                   : xmlfile,
            "workingdir"                : m2g_conf['workingdir'],
            "modelname"                 : modelname,
            "notifier"                  : notifier,
            "filelogger"                : filelogger,
            "MPGOSsourcedir"            : builder_options[0],
            "GPU information"           : device,
            "numberOfThreads"           : builder_options[3],
            "numberOfProblems"          : builder_options[4],
            "numberOfDenseOutput"       : builder_options[5],
            "threadsPerBlock"           : builder_options[6],
            "initialTimeStep"           : builder_options[7],
            "preferSharedMemory"        : builder_options[8],
            "maximumTimeStep"           : builder_options[9],
            "minimumTimeStep"           : builder_options[10],
            "eventDirection"            : builder_options[11],
            "denseOutputMinimumTimeStep": builder_options[12],
            "denseOutputSaveFrequency"  : builder_options[13],
            "tolerance"                 : builder_options[14],
            "timeDomainStart"           : builder_options[15],
            "timeDomainEnd"             : builder_options[16],
            "numberOfContinuousState"   : getnumstate(xmlfile)
        }
        
        conf_str = conf_dict2str(config_dict, device.get_attributes())
        print(conf_str)

        print()
        check = False
        while not check:
            ans = input("Vuoi continuare con le seguenti configurazioni: [Y/N] ")
            if ans.upper() == "Y":
                check = True
            elif ans.upper() == "N":
                # START LOG
                msg = "Uscita dal programma in quanto conferma per continuare negativa" 
                tmp_logger.info(msg, msg)
                # END LOG
                sys.exit(0)
        
        # START LOG
        # Creazione del logger su file
        if config_dict['filelogger']:
            m2g_logger = logger.Logger(modelname, config_dict['workingdir'], config_log)
            msg = "Informazioni dal file di configurazione estrapolate. Riassunto della configurazione \n" + conf_str
            coloredlogs.install(level="DEBUG", logger=m2g_logger.clogger)
            m2g_logger.info(msg, "Informazioni dal file di configurazione estrapolate")
        # END LOG

        # Se il campo notifier è True allora imposto un argomento di sistema a 1, altrimenti 0
        # Questo viene fatto in quanto l'attivazione o la disattivazione del notifier
        # in ogni file dipende da una MACRO che si basa sull'ultimo elemento dato in input (come 
        # se fosse da riga di comando).
        if config_dict['notifier']:
            sys.argv.append(1)
        else:
            sys.argv.append(0)

        return config_dict, m2g_logger

    except AssertionError as ae:
        msg = f"\031[1;32;40modelica2GPU ha riscontrato il seguente errore. {ae.args[0]}"
        tmp_logger.error(msg, msg)
        sys.exit(1)



# Questo va chiamato prima invece
config_dict, m2g_logger = get_modelica2GPU_configuration(config_m2g)
del tmp_logger

coloredlogs.install(level="DEBUG", logger=m2g_logger.clogger)

try:
    # Ovviamente questi moduli devono essere chiamati dopo in quanto devo settare il parametro per il notifier
    from parser.parser import *
    from builder.builder import *
    from model.model import *


    xml_parser = Parser(config_dict['xmlfile'], m2g_logger) # Creo un oggetto Parser
    xml_parser.parseXML() # Eseguo il parsing
    abstract_model = Model(
        config_dict['modelname'], 
        xml_parser.dynamic_equations['equations'],
        xml_parser.dynamic_equations['events'],
        xml_parser.algorithms, xml_parser.unique_dict, m2g_logger
    ) # Creo una versione astratta del modello

    # Creo il builder ed infine costruisco i tre file: Model.cu, Model_SystemDefinition.cuh, makefile
    cpp_builder = Builder(config_dict, abstract_model, config_dict['workingdir'], m2g_logger)
    cpp_builder.builfiles()

    # START LOG
    end = time.time()
    msg = f"Operazione di traduzione terminata con successo in {end - start}ms."
    m2g_logger.debug(msg, msg)
    # END LOG
except Exception as e:
    msg = f"modelica2GPU ha riscontrato il seguente errore. {e.args[0]}"
    m2g_logger.error(msg, msg)
    sys.exit(1)

print("\n\n\033[1;32;40mMESSAGGIO DA MODELICA2GPU")
print("\033[1;32;40mDurante l'operazione modelica2GPU non riscontrato alcun errore rilevante.")
print("\033[1;32;40mTutti i file sono stati salvati nella directory indicata nel file di configurazione: \n")
print(f"    \033[1;32;40m{config_dict['workingdir']}{config_dict['modelname']}_MPGOS\n")
print("\033[1;32;40mIl file di log è presente nella working directory sotto la voce 'log'")
print("\033[1;32;40mAdesso è possibile compilare i file Cpp, con il comando 'make all' e simulare il modello\n")
print("\033[1;32;40mSi ringrazia l'utente per aver provato modelica2GPU\n")
print("\033[1;32;40mCordiali saluti, X\n\n")
