# Inputs

i_value, f_value = input().split(".")
i_value = int(i_value)
f_value = int(f_value)

# Calculations

## Notes
n100 = int(i_value/100)
i_rest = int(i_value % 100)
n50 = int(i_rest/50)
i_rest = int(i_rest % 50)
n20 = int(i_rest/20)
i_rest = int(i_rest % 20)
n10 = int(i_rest/10)
i_rest = int(i_rest % 10)
n5 = int(i_rest/5)
i_rest = int(i_rest % 5)
n2 = int(i_rest/2)

## Coins
c1 = int(i_rest % 2)
c50 = int(f_value/50)
f_rest = int(f_value % 50)
c25 = int(f_rest/25)
f_rest = int(f_rest % 25)
c10 = int(f_rest/10)
f_rest = int(f_rest % 10)
c05 = int(f_rest/5)
f_rest = int(f_rest % 5)
c01 = f_rest

# Outputs

print("NOTAS:")
print(str(n100) + " nota(s) de R$ 100.00")
print(str(n50) + " nota(s) de R$ 50.00")
print(str(n20) + " nota(s) de R$ 20.00")
print(str(n10) + " nota(s) de R$ 10.00")
print(str(n5) + " nota(s) de R$ 5.00")
print(str(n2) + " nota(s) de R$ 2.00")
print("MOEDAS:")
print(str(c1) + " moeda(s) de R$ 1.00")
print(str(c50) + " moeda(s) de R$ 0.50")
print(str(c25) + " moeda(s) de R$ 0.25")
print(str(c10) + " moeda(s) de R$ 0.10")
print(str(c05) + " moeda(s) de R$ 0.05")
print(str(c01) + " moeda(s) de R$ 0.01")
