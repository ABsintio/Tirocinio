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


class VariableCategoryNotFound(Exception):
    """
    Exception raised for errors in category tag

    Attributes:
        category -- string that represent a category of a variable
        message  -- explanation of the error
    """
    def __init__(self, category, message="Variable category not found"):
        self.category = category
        self.message = message
        super().__init__(message)
    
    def __str__(self): return f"{self.category} -> {self.message}"


class VariableTypeNotFound(Exception):
    """
    Exception raised for errors in type tag (<Real />, <Integer />, <Boolean />)

    Attributes:
        type -- string that represent a type of a variable
        message  -- explanation of the error
    """
    def __init__(self, typo, message="Variable type not found"):
        self.typo = typo
        self.message = message
        super().__init__(message)
    
    def __str__(self): return f"{self.typo} -> {self.message}"
