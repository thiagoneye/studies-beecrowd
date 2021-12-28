# Inputs

a, b, c = input().split()
a = float(a)
b = float(b)
c = float(c)

# Calculations and Outputs

delta = b**2 - 4*a*c

if (a != 0) and (delta >= 0):
    r1 = (-b + delta**(1/2))/(2*a)
    r2 = (-b - delta**(1/2))/(2*a)
    print("R1 = %.5f" % r1)
    print("R2 = %.5f" % r2)
else:
    print("Impossivel calcular")
