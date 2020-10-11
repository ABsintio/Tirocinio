import re



class Var:
    def __init__(self, conc, amount, val):
        self.conc = conc
        self.amount = amount
        self.val = val
    
    # Metodi getter per gli attributi
    def getConc(self): return self.conc
    def getAmount(self): return self.amount
    def getVal(self): return self.val
    
    
