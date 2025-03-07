# Inputs

values = []

while len(values) < 100:
    values.append(int(input()))

# Outputs

max_value = max(values)
position_value = values.index(max_value)

print(max_value)
print(position_value+1)
