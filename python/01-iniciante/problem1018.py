# Inputs

value = int(input())

# Calculations

n100 = int(value/100)
rest = int(value % 100)
n50 = int(rest/50)
rest = int(rest % 50)
n20 = int(rest/20)
rest = int(rest % 20)
n10 = int(rest/10)
rest = int(rest % 10)
n5 = int(rest/5)
rest = int(rest % 5)
n2 = int(rest/2)
rest = int(rest % 2)
n1 = rest

# Outputs

print(value)
print(str(n100) + " nota(s) de R$ 100,00")
print(str(n50) + " nota(s) de R$ 50,00")
print(str(n20) + " nota(s) de R$ 20,00")
print(str(n10) + " nota(s) de R$ 10,00")
print(str(n5) + " nota(s) de R$ 5,00")
print(str(n2) + " nota(s) de R$ 2,00")
print(str(n1) + " nota(s) de R$ 1,00")
