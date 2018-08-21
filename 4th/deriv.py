from math import sin, cos

class Derivative:
    def __init__(self, f):
        self.f = f
    def __call__(self, x, h = 1e-06):
        return (self.f(x+h) - self.f(x)) / h

def main():
    dsin = Derivative(sin)
    print("dsin = ", [])
