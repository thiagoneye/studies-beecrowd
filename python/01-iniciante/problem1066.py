# Inputs and Calculations

even = 0
odd = 0
positive = 0
negative = 0

for i in range(5):
    value = float(input())

    if (value % 2 == 0):
        even += 1
    else:
        odd += 1

    if (value > 0):
        positive += 1
    elif (value < 0):
        negative += 1

# Outputs

print(str(even) + ' valor(es) par(es)')
print(str(odd) + ' valor(es) impar(es)')
print(str(positive) + ' valor(es) positivo(s)')
print(str(negative) + ' valor(es) negativo(s)')
