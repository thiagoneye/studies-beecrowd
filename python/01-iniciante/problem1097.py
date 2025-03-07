# Outputs

i, j = 1, 7
temp_j = j

while i < 10:
    print(f"I={i} J={j}")

    j -= 1

    if j < temp_j-2:
        i += 2
        j = temp_j + 2
        temp_j = j
