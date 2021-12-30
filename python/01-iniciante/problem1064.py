# Inputs and Calculations

values = list()

for i in range(6):
    value = float(input())

    if (value > 0):
        values.append(value)

mean = sum(values)/len(values)

# Outputs

print(str(len(values)) + ' valores positivos')
print('%.1f' % mean)
