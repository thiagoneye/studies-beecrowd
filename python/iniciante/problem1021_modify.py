# Inputs

i_value, f_value = input().split(".")
i_value = int(i_value)
f_value = int(f_value)

notes = [100, 50, 20, 10, 5, 2]
cents = [100, 50, 25, 10, 5, 1]

# Calculations and Outputs

print("NOTAS:")
for i in notes:
    numb = int(i_value/i)
    i_value = int(i_value % i)
    print(str(numb) + " nota(s) de R$ %.2f" % i)

print("MOEDAS:")
for i in cents:
    if (i == 100):
        numb = i_value
    else:
        numb = int(f_value/i)
        f_value = int(f_value % i)
    print(str(numb) + " moeda(s) de R$ %.2f" % (i/100))
