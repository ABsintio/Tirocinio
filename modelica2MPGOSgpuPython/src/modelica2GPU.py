import yaml
from parser.parser import *
from build.builder import *
from utils import logger, notifier
import sys


logger = logger.Logger(None, ".", False)


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
    msg = f"il modello {m2g_conf['modelfilename']} non è nella workingdir dichiarata"
    assert os.path.isfile(os.path.join(m2g_conf['workingdir'], m2g_conf['modelfilename'])), msg
    # Controllo che notifier e logger siano campi booleani
    n, l = m2g_conf['notifier'], m2g_conf['logger']
    assert isinstance(n, bool) and isinstance(l, bool), "I campi notifier e logger devono essere booleani" 

    builder_config = config_dict['builter']
    # La source dir per MPGOS deve esistere
    src_dir = builder_config['MPGOSsourcedir']
    assert os.path.isdir(src_dir), f"Il path alla directory SourceDir di MPGOS è errato: {src_dir}"
    # Il campo usedefaultoption deve essere booleano
    # TODO: compila il resto


def get_modelica2GPU_configuration(config_file):
    """ Estrapola le informazioni dal file di configurazione """
    config_dict = yaml.load(open(config_file), Loader=yaml.FullLoader)
    try:
        checkconfig(config_dict)
    except AssertionError as ae:
        msg = f"modelica2GPU ha riscontrato il seguente errore. {ae.args[0]}"
        logger.error(msg, msg)
    builder_conf = config_dict['builder'],


get_modelica2GPU_configuration("config/modelica2gpu.yaml")