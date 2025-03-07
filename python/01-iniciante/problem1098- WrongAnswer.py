# Outputs

i, j = 0, 1
temp_j = 1

while i <= 2:
    if abs(round(i, 1) - int(i)) > 0:
        print(f"I={round(i, 1)} J={round(j, 1)}")
    else:
        print(f"I={round(i, 0)} J={round(j, 0)}")

    j += 1

    if j > temp_j+2:
        i += 0.2
        j = temp_j + 0.2
        temp_j = j
