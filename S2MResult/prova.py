from functools import wraps

def func(n):
    def fun(f):
        @wraps(f)
        def wrapper(*args, **kargs):
            print("Inizialitation")
            a = f(*args, **kargs) + n
            print("Finalization")
            return a
        return wrapper
    return fun

@func(1)
def f(x, y): return x + y

if __name__ == "__main__":
    print(f(1, 2))