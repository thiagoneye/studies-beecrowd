# Inputs

a, b, c = input('Enter three numbers: ').split()
a = int(a)
b = int(b)
c = int(c)

# Calculations

maiorab = (a + b + abs(a - b))/2
output = (maiorab + c + abs(maiorab - c))/2

# Prints

print('%d eh o maior' % output)
