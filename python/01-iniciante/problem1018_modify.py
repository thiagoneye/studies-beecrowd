# Inputs

value = int(input())
notes = [100, 50, 20, 10, 5, 2, 1]

# Calculations and Ouputs

for i in notes:
    number = int(value/i)
    value = int(value % i)
    print(str(number) + " nota(s) de R$ %.2f" % i)
