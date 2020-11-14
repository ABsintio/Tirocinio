# ----------------------------------------- # CLASSI DI DEFINIZIONE GENERALE DEGLI OPERATORI # ----------------------------------------- #


class UnaryOperator:
    """ Rappresenta un operatore unario """
    def __init__(self, value):
        self.value = value   # Valore dell'operatore unario. Ex. Der(x), Not(x)

    def __str__(self): return "UnaryOperator(" + self.value + ")"

    def setvalue(self, new_value): self.value = new_value


class BinaryOperator:
    """ Rappresenta un operatore binario """
    def __init__(self, left, right):
        self.left = left    # Valore dell'operatore a sinistra
        self.right = right  # Valore dell'operatore a destra
    
    def __str__(self): return "BinaryOperator(" + self.left + "," + self.right + ")"

    def setleft(self, new_left): self.left = new_left

    def setright(self, new_right): self.right = new_right