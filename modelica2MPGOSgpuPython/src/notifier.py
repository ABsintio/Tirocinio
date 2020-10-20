import os
from os import path
import sys
from functools import wraps
import time

while 1:
    try:
        import notify2
        break
    except ImportError:
        pythonstring = "python.exe" if os.sys.platform == "win32" else "python3"
        os.system(f"{pythonstring} -m pip install notify2")


#--------------------------# DEFINIZIONE DELLE MACRO DA UTILIZZARE ALL'INTERNO DEL PROGRAMMA # --------------------------#


ERROR_ICON_PATH  = "/".join(path.abspath(sys.argv[0]).split("/")[:-1]) + "/icons/icons8-error-64.png"       # path all'icona di errore
SIMPLE_ICON_PATH = "/".join(path.abspath(sys.argv[0]).split("/")[:-1]) + "/icons/icons8-video-card-100.png" # path all'icona dell'app


#--------------------------# DEFINIZIONE DELLA CLASSE PER LE NOTIFICHE DELL'APPLICAZIONE PRIMARIA # --------------------------#


class Notifier:
    """ Classe per le notifiche del main """
    def __init__(self, app_name):
        notify2.init(app_name)
        self.notification = notify2.Notification(None)
        self.notification.set_timeout(5000)

    def setupforerror(self, title, message):
        """ Fa il setup della notifica come una notifica di errore """
        self.notification.set_urgency(notify2.URGENCY_CRITICAL)
        self.notification.update(title, message, icon=ERROR_ICON_PATH)
        self.notification.set_category("im.error")

    def setupforsimple(self, title, message):
        """ Fa il setup della notifica semplice """
        self.notification.set_urgency(notify2.URGENCY_NORMAL)
        self.notification.update(title, message, icon=SIMPLE_ICON_PATH)
        self.notification.set_category("im")
    
    def show(self):
        self.notification.show()


#--------------------------# DEFINIZIONE DEL DECORATORE DELLE FUNZIONI PER LE NOTIFICHE # --------------------------#


def notifier(necessary, titolo1, testo1, titolo2, testo2):
    def decorator_notifier(f):
        @wraps(f)
        def wrapper(*args, **kargs):
            if necessary:
                n1 = Notifier("modelica2GPU")
                n1.setupforsimple(titolo1, testo1)
                n1.show()
                time.sleep(2)
            a = f(*args, **kargs)
            if necessary:
                n2 = Notifier("modelica2GPU")
                n2.setupforsimple(titolo2, testo2)
                n2.show()
                time.sleep(2)
            return a
        return wrapper
    return decorator_notifier