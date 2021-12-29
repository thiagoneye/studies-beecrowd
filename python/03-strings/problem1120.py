# Inputs

values = input()
contract = list()

while (values != '0 0'):
    value1, value2 = values.split()

    if (value2.replace(value1, '') == ''):
        contract.append(0)
    else:
        contract.append(int(value2.replace(value1, '')))

    values = input()

# Outputs

for i in contract:
    print(i)
