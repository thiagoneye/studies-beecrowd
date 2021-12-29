# Inputs

valor = float(input())

# Calculations

if (valor <= 2000.):
    total = 0
elif (valor <= 3000.):
    total = (valor - 2000)*0.08
elif (valor <= 4500.):
    total = (1000*0.08) + ((valor - 3000)*0.18)
else:
    total = (1000*0.08) + (1500*0.18) + ((valor - 4500)*0.28)

# Outputs

if total == 0:
    print('Isento')
else:
    print('R$ %.2f' % total)
