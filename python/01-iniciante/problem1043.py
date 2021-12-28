# Inputs

a, b, c = input().split()

# Calculations and Outputs

a = float(a)
b = float(b)
c = float(c)

if ((a + b) > c) and ((a + c) > b) and ((b + c) > a):
    per = a + b + c
    print("Perimetro = %.1f" % per)
else:
    are = (a + b)*c/2
    print("Area = %.1f" % are)
