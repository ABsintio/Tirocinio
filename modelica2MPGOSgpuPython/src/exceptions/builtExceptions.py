class OperatorNotFoundException(Exception):
    """
    Exception raised for errors in operator tag

    Attributes:
        operator -- input operator (tag)
        message  -- explanation of the error
    """
    def __init__(self, operator, message="Operator not implemented yet"):
        self.operator = operator
        self.message = message
        super().__init__(message)
    
    def __str__(self): return f"{self.operator} -> {self.message}"