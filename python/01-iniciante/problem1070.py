# Inputs

value = int(input())

# Outputs

count = 0

while (count < 6):
    if (value % 2 == 1):
        count += 1
        print(value)

    value += 1
