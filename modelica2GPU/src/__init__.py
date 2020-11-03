# Controlla le dipendenze
try:
    import notify2
except ImportError:
    print("Errore: Import Error, Si prega di installare la dipendenza \"notify2\"")