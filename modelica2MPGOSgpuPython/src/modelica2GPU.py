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

import yaml
from parser.parser import *
from build.builder import *
from utils import logger, notifier
import xml.etree.ElementTree as ET


logger = logger.Logger(None, ".", False)


def createXML(workingdir, modelfilename):
    """ Crea l'XML tramite il comando del compilatore openmodelica e ritorna il nome del file """
    pass


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
    numberOfThreads            = 1000
    numberOfProblems           = 2 * numberOfThreads
    numberOfDenseOutput        = numberOfThreads
    threadsPerBlock            = device.get_attributes()[cuda.device_attribute.MAX_THREADS_PER_BLOCK]
    initialTimeStep            = 1.0e-2
    preferSharedMemory         = 1
    maximumTimeStep            = 1.0e+6
    minimumTimeStep            = 1.0e-14
    timeStepGrowLimit          = 10.0
    timeStepShrinkLimit        = 0.2
    events_directions          = [0 for _ in range(nevents)]
    denseOutputMinumumTimeStep = 0.0
    denseOutputSaveFrequency   = 1
    tolerance                  = [get_tolerance_fromXML(xmlfile) for _ in range(nstates)]
    return [
        major, minor,
        numberOfThreads,          numberOfProblems,  numberOfDenseOutput,
        threadsPerBlock,          initialTimeStep,   preferSharedMemory,
        maximumTimeStep,          minimumTimeStep,   timeStepGrowLimit,
        timeStepShrinkLimit,      events_directions, denseOutputMinumumTimeStep,
        denseOutputSaveFrequency, tolerance
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
               isinstance(builder_config['modeldefinition']['timeStepGrowLimit'], float) and \
               isinstance(builder_config['modeldefinition']['timeStepShrinkLimit'], float) and \
               isinstance(builder_config['modeldefinition']['denseOutputMinimumTimeStep'], float) and \
               isinstance(builder_config['modeldefinition']['denseOutputSaveFrequency'], int), \
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
            string += getGPUattr2str(gpu_attrs, v)
        elif isinstance(v, list):
            string += f"{k}:\n" + "    ".join([f"{k}Value{count + 1}: {v[count]}\n" for count in range(len(v))])
        else: 
            string += f"{k}: {v}\n"
    return string


def get_modelica2GPU_configuration(config_file):
    """ Estrapola le informazioni dal file di configurazione """
    try:
        config_dict = yaml.load(open(config_file), Loader=yaml.FullLoader)
        # START LOG
        msg = f"Controllo della struttura del configuratore {config_file}"
        logger.debug(msg, msg)
        # END LOG
        checkconfig(config_dict)    
        # START LOG
        msg = f"Controllo andato a buon fine"
        logger.debug(msg, msg)
        # END LOG
        # START LOG
        msg = f"Ottenimento delle informazioni necessarie da {config_file}"
        logger.debug(msg, msg)
        # END LOG
        # Una volta fatto il check della struttura del configuratore estraggo le informazioni necessarie
        m2g_conf, builder_config = config_dict['modelica2gpu'], config_dict['builder']
        genXML = m2g_conf['generateXML']
        xmlfile = createXML(m2g_conf['workingdir'], m2g_conf['modelfilename']) if genXML else m2g_conf['xml']
        notifier, filelogger = m2g_conf['notifier'], m2g_conf['filelogger']
        modelname = xmlfile.split(".")[0].split("/")[-1]
        event_num, state_num = getnumevents(xmlfile), getnumstate(xmlfile)
        builder_options = [builder_config['MPGOSsourcedir']]
        device = None
        
        # Prima però dobbiamo controllare i parametri eventDirection e tolerance
        if not builder_config['usedefaultoptions']:
            # Check del parametro eventDirection
            check_multiple_config(
                "Il parametro eventDirection è None nonostante ci sono eventi, oppure viceversa"
                "Il numero di parametri eventDirection non matcha con il numero di eventi rilevati",
                "Tutti i parametri devono essere di tipo int",
                builder_config, 'eventDirection', event_num, int
            )

            # Check del parametro tolerance
            check_multiple_config(
                "Il parametro tolerance è None nonostante ci sono stati, oppure viceversa"
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
                builder_config['modeldefinition']['timeStepGrowLimit'], builder_config['modeldefinition']['timeStepShrinkLimit'],
                list(builder_config['modeldefinition']['eventDirection'].values()), 
                builder_config['modeldefinition']['denseOutputMinimumTimeStep'], 
                builder_config['modeldefinition']['denseOutputSaveFrequency'], 
                list(builder_config['modeldefinition']['tolerance'].values())
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
            "GPU information"           : device.name(),
            "numberOfThreads"           : builder_options[3],
            "numberOfProblems"          : builder_options[4],
            "numberOfDenseOutput"       : builder_options[5],
            "threadsPerBlock"           : builder_options[6],
            "initialTimeStep"           : builder_options[7],
            "preferSharedMemory"        : builder_options[8],
            "maximumTimeStep"           : builder_options[9],
            "minimumTimeStep"           : builder_options[10],
            "timeStepGrowLimit"         : builder_options[11],
            "timeStepShrinkLimit"       : builder_options[12],
            "eventDirection"            : builder_options[13],
            "denseOutputMinimumTimeStep": builder_options[14],
            "denseOutputSaveFrequency"  : builder_options[15],
            "tolerance"                 : builder_options[16] 
        }
        
        print(conf_dict2str(config_dict, device.get_attributes()))
        
    except AssertionError as ae:
        msg = f"modelica2GPU ha riscontrato il seguente errore. {ae.args[0]}"
        logger.error(msg, msg)


get_modelica2GPU_configuration("config/modelica2gpu.yaml")