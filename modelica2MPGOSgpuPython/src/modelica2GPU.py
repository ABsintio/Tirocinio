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


def getdefaultoptions():
    """ Restituisce una lista di opzioni di default """
    # Come prima cosa dobbiamo prendere la CUDA capability della GPU di default
    assert cuda.Device.count() > 0, "Non sembrano essere presenti GPU nVidia sul dispositivo"
    device = cuda.Device(0) # Prendo il primo device disponibile
    major, minor = device.compute_capability()
    attrs = device.get_attributes()
    # Infine settiamo gli attributi rimanenti
    numberOfThreads     = 1000
    numberOfProblems    = 2 * numberOfThreads
    numberOfDenseOutput = numberOfThreads
    # TODO: Completare


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
               isinstance(builder_config['modeldefinition']['maximumTimeStep'], int) and \
               isinstance(builder_config['modeldefinition']['minimumTimeStep'], int) and \
               isinstance(builder_config['modeldefinition']['timeStepGrowLimit'], int) and \
               isinstance(builder_config['modeldefinition']['timeStepShrinkLimit'], int) and \
               isinstance(builder_config['modeldefinition']['denseOutputMinimumTimeStep'], int) and \
               isinstance(builder_config['modeldefinition']['denseOutputSaveFrequency'], int), \
               "Se il campo userdefaultoptions è False allora tutti i restanti devono essere settati e interi"


def getnumevents(xmlfile):
    """ Dall'XML prende il numero di eventi """
    root = ET.parse(xmlfile).getroot()
    return int(root.attrib['numberOfEventIndicators'])


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
        event_num = getnumevents(xmlfile)

        # Controlla che il numero di eventDirection values sia nel numero degli eventi
        msg = "Il numero di valori eventDirection è minore/maggiore del numero degli eventi rilevati nel modello"
        assert builder_config['modeldefinition']['eventDirection'] is None and event_num == 0 or \
               len(builder_config['modeldefinition']['eventDirection']) == event_num, msg
        # Controlla anche che tutti i valori dati siano interi, se esistono
        if builder_config['modeldefinition']['eventDirection'] is not None:
            for k, v in builder_config['modeldefinition']['eventDirection']:
                assert isinstance(v, int), "Tutti i valori valueEvent<n> devono essere interi"

        notifier, filelogger = m2g_conf['notifier'], m2g_conf['filelogger']
        modelname = xmlfile.split(".")[0].split("/")[-1]
        # TODO: completare con il getdefaultoption
    except AssertionError as ae:
        msg = f"modelica2GPU ha riscontrato il seguente errore. {ae.args[0]}"
        logger.error(msg, msg)


get_modelica2GPU_configuration("config/modelica2gpu.yaml")