# Inputs

a, b, c = input().split()

# Calculations

abc = [int(a), int(b), int(c)]
order = abc.copy()
order.sort()

# Outputs

for i in order:
    print(i)

print("")
for i in abc:
    print(i)
