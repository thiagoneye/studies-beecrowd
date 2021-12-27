# Inputs

tempo = float(input()) # h
velocidade = float(input()) # km/h
consumo = 12 # km/l

# Calculations

litros = tempo*velocidade/consumo

# Outputs

print("%.3f" % litros)
