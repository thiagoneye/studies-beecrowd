# Inputs

x = int(input())
y = int(input())

# Calculations

xy = [x, y]
xy.sort()

values = [i for i in list(range(xy[0]+1, xy[1])) if ((i % 2) == 1)]
total = sum(values)

# Outputs

print(total)
