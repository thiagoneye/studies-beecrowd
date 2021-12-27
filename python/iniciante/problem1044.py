# Inputs

a, b = input().split()

# Outputs

ab = [int(a), int(b)]

if (max(ab) % min(ab) == 0):
    print("Sao Multiplos")
else:
    print("Nao sao Multiplos")
