# Inputs

a, b, c = input('Insira três números:').split()
a = float(a)
b = float(b)
c = float(c)

# Constants

pi = 3.14159

# Calculation

tria = a*c/2
circ = pi*(c**2)
trap = (a+b)*c/2
quad = b**2
reta = a*b

# Print

print('TRIANGULO: %.3f' % (tria))
print('CIRCULO: %.3f' % (circ))
print('TRAPEZIO: %.3f' % (trap))
print('QUADRADO: %.3f' % (quad))
print('RETANGULO: %.3f' % (reta))
