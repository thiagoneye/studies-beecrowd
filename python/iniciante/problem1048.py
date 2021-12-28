"""
Forma elegante de resolução do problema

# Imports

import numpy as np

# Inputs

valor = float(input())

salarios = np.array([400., 800., 1200., 2000.])
percentual = np.array([0.15, 0.12, 0.1, 0.07, 0.04])

# Calculations

idx = np.sum(salarios < valor)
reajuste = percentual[idx]
ganho = valor*reajuste
novo = valor + ganho

# Outputs

print("Novo salario: %.2f" % novo)
print("Reajuste ganho: %.2f" % ganho)
print("Em percentual: %d %%" % (reajuste*100))
"""

# Inputs

valor = float(input())

# Calculations

if (valor <= 400.):
    percentual = 0.15
elif (valor <= 800.):
    percentual = 0.12
elif (valor <= 1200.):
    percentual = 0.1
elif (valor <= 2000.):
    percentual = 0.07
else:
    percentual = 0.04

ganho = valor*percentual
novo = valor + ganho

# Outputs

print("Novo salario: %.2f" % novo)
print("Reajuste ganho: %.2f" % ganho)
print("Em percentual: %d %%" % (percentual*100))
