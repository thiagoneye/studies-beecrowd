# Inputs

x1, y1 = input('Enter two numbers: ').split()
x2, y2 = input('Enter two numbers: ').split()

x1 = float(x1)
x2 = float(x2)
y1 = float(y1)
y2 = float(y2)

# Calculations

output = ((x2 - x1)**2 + (y2 - y1)**2)**(1/2)

# Prints

print('%.4f' % output)
