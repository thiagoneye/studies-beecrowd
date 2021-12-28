# Inputs

a, b = input().split()
a = int(a)
b = int(b)

# Calculations

if (a >= b):
    duration = b - a + 24
else:
    duration = b - a

# Outputs

print("O JOGO DUROU %d HORA(S)" % duration)
