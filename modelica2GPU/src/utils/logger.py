import yaml
import logging
import logging.config
import time
import os
import sys
from utils import notifier
from functools import wraps
import coloredlogs


#-------------------------# DEFINIZIONE DELLA CLASSE LOGGER CON LA QUALE SALVIAMO DELLE INDFO # -------------------------#


class Logger:
    """ Classe per il logging """
    def __init__(self, modelname, workingdir, config_file, log=True):
        self.modelname = modelname
        self.wdir = workingdir
        self.config_file = config_file
        # Prendo un logger da console (ossia il root)
        logging.config.dictConfig(yaml.load(open(config_file, mode="r")))
        self.clogger = logging.getLogger("root")
        coloredlogs.install(level="DEBUG", logger=self.clogger)
        self.logger = None
        self.testlog = log

        if log:
            # Se è stata data l'opzione di logging su file configuro il logger
            self.clogger.info("Creating new logger")
            self.configureLogger()

    @staticmethod
    def createString(key, value):
        """ Crea una stringa per il debug dell'aggiornamento della configurazione """
        debug_str = "Aggiornando nodo %s con: " % (key)
        for v1, v2 in value.items():
            debug_str += "({}, {})".format(
                str(v1), str(v2)
            )
        return debug_str

    @staticmethod
    def update_config(update, logger, config_file):
        """ Scrive nel file dato in input l'aggiornamento di configurazione """
        success = True
        start = time.time()
        coloredlogs.install(level="DEBUG", logger=logger)
        logger.info("Iniziazione della procedura di aggiornamento")
        try:
            # Apro in lettura il file yaml e carico il dizionario
            yaml_dict = yaml.load(open(config_file, mode="r", encoding="utf-8"))
            logger.debug("Estratto il dizionario dal file %s" % (config_file))
            # Per ogni elemento nel dizionario, prendo la rispettiva
            # sezione del file yaml e aggiungo il contenuto presente
            # nel dizionario dato in input
            for k, v in update.items():
                yaml_dict[k].update(v)
                logger.debug(Logger.createString(k, v))
            # Completa l'aggiornamento della configurazione con un nuovo logger e handler
            with open(config_file, mode="w") as stream:
                yaml.dump(yaml_dict, stream, default_flow_style=False)
                logger.debug("Scrittura in %s avvenuta con successo" % (config_file))
        except Exception as e:
            success = False
            logger.error("Si è verificato il seguente errore -> " + e)
        finally:
            end = time.time()
            logger.info(
                "Attività di aggiornamento terminata con {} in {} ms".format(
                    "Successo" if success else "Errore",
                    str(end - start)
                )
            )
            return success


    def configureLogger(self):
        """ 
        Ogni logger di una run ha una configurazione diversa in quanto
        si differenziano per working directory, per nome del modello
        e per altre caratteristiche non comuni a tutti i modelli. Per
        questo motivo ad ogni run andiamo ad aggiornare il file logger.yaml,
        ossia il file di configurazione di tutti i logger. Si andrà a creare
        un sample di dizionario da aggiungere al file per inserire il nuovo
        logger da utilizzare per la run corrente.
        """
        # Configuriamo il logger
        with open(self.config_file, mode="r", encoding="utf-8") as stream:
            logging.config.dictConfig(yaml.load(stream))

        # Creiamo il dizionario con il quale aggiornare il file di configurazione
        update = {
            "handlers" : {
                self.modelname + "_handler" : {
                    "class" : "logging.FileHandler", # Ossia salva il contenuto su file
                    "level" : "DEBUG",               # Utilizzato per DEBUG, WARNING e ERROR
                    "formatter": "simple",
                    "filename" : self.wdir + "/log%s.log" % (self.modelname)
                }
            },
            "loggers" : {
                self.modelname : {
                    "level" : "DEBUG",
                    "handlers" : [self.modelname + "_handler"],
                    "propagate" : "no"
                }
            }
        }
        # In caso non esistesse la directory la creo
        try:
            os.mkdir(self.wdir + "/log")
        except FileExistsError: 
            pass
        # Se non esiste il file .log, lo creo
        newfile = self.wdir + "/log/%s.log" % (self.modelname)
        if not os.path.isfile(newfile):
            document = open(newfile, mode="x")
            document.close()
        # Richiamo la funzione di aggiornamento del file di configurazione.
        success = Logger.update_config(update, self.clogger, self.config_file)
        n = notifier.Notifier("modelica2GPU")
        if not success:
            n.setupforerror("Error: Logger config update error", 
                            "L'aggiornamento del logger non è andato a buon fine")
            n.show()
            sys.exit(1)
        
        n.setupforsimple("Logger config successfully updated", 
                         "Logger aggiornato e configurato correttamente")
        n.show()
        # Creo il nuovo logger
        logging.config.dictConfig(yaml.load(open(self.config_file, mode="r")))
        self.logger = logging.getLogger(self.modelname)
        if self.logger:
            self.logger.info("Logger %s creato con successo" % (self.logger.__str__()))
    
    def info(self, finfo, cinfo):
        """
        Scrive un log di info sul file, se configurato,
        e sulla console prendendo i messaggi dai due parametri 
        finfo e cinfo rispettivamente
        :param str finfo: messaggio da scrivere su file
        :param str cinfo: messaggio da scrivere su console
        """
        if self.testlog: self.logger.info(finfo)
        self.clogger.info(cinfo)
    
    def debug(self, fdebug, cdebug):
        """
        Scrive un log di debug sul file, se configurato,
        e sulla console prendendo i messaggi dai due parametri 
        fdebug e cdebug rispettivamente
        :param str fdebug: messaggio da scrivere su file
        :param str cdebug: messaggio da scrivere su console
        """
        if self.testlog: self.logger.debug(fdebug)
        self.clogger.debug(cdebug)
    
    def warning(self, fwarning, cwarning):
        """
        Scrive un log di warning sul file, se configurato,
        e sulla console prendendo i messaggi dai due parametri 
        fwarning e cwarning rispettivamente
        :param str fwarning: messaggio da scrivere su file
        :param str cwarning: messaggio da scrivere su console
        """
        if self.testlog: self.logger.warning(fwarning)
        self.clogger.warning(cwarning)
    
    def error(self, ferror, cerror):
        """
        Scrive un log di info sul file, se configurato,
        e sulla console prendendo i messaggi dai due parametri 
        ferror e cerror rispettivamente
        :param str ferror: messaggio da scrivere su file
        :param str cerror: messaggio da scrivere su console
        """
        if self.testlog: self.logger.error(ferror)
        self.clogger.error(cerror)