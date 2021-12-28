# Inputs

a, b = input().split()
a = int(a)
b = int(b)

items = {1: 4, 2: 4.5, 3: 5, 4: 2, 5:1.5}

# Calculations

total = b*(items[a])

# Outputs

print( "Total: R$ %.2f" % total)
