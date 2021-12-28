# Inputs

a, b, c = input().split()

# Calculations

abc = [float(a), float(b), float(c)]
abc.sort(reverse=True)
a = abc[0]
b = abc[1]
c = abc[2]

# Outputs

if (a >= (b + c)):
    print("NAO FORMA TRIANGULO")
elif ((a**2) == ((b**2) + (c**2))):
    print("TRIANGULO RETANGULO")
    if ((a == b) and (a != c)) or ((a == c) and (a != b)) or ((b == c) and (a != b)):
        print("TRIANGULO ISOSCELES")
elif ((a**2) > ((b**2) + (c**2))):
    print("TRIANGULO OBTUSANGULO")
    if ((a == b) and (a != c)) or ((a == c) and (a != b)) or ((b == c) and (a != b)):
        print("TRIANGULO ISOSCELES")
elif ((a**2) < ((b**2) + (c**2))):
    print("TRIANGULO ACUTANGULO")
    if ((a == b) and (a == c)):
        print("TRIANGULO EQUILATERO")
    elif ((a == b) and (a != c)) or ((a == c) and (a != b)) or ((b == c) and (a != b)):
        print("TRIANGULO ISOSCELES")
