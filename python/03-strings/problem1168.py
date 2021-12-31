# Inputs

numb = int(input())

values = list()
for i in range(numb):
    value = input()
    values.append(value)

leds = {'1': 2, '2': 5, '3': 5, '4': 4, '5': 5,
        '6': 6, '7': 3, '8': 7, '9': 6, '0': 6}

# Calculations and Outputs

for i in values:
    total = 0

    for j in i:
        total += leds[j]

    print("%d leds" %total)
