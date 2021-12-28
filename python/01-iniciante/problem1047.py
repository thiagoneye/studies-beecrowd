# Inputs

a, b, c, d = input().split()

# Calculations

ab = float(a) + float(b)/60
cd = float(c) + float(d)/60

if (ab >= cd):
    duration = cd - ab + 24
else:
    duration = cd - ab

hour = int(duration)
minu = int(round((duration - float(hour))*60))

# Outputs

print("O JOGO DUROU " + str(hour) + " HORA(S) E " + str(minu) + " MINUTO(S)")
