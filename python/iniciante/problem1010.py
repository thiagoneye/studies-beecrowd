# Inputs

A, B, C = input().split(' ')
D, E, F = input().split(' ')

# Calculations

V = int(B)*float(C) + int(E)*float(F)

# Prints

print('VALOR A PAGAR: R$ {:.2f}'.format(V))
