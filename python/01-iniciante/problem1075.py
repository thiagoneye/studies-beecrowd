# Inputs

n = int(input())

# Outputs

for idx in range(10000):
    if (idx+1) % n == 2:
        print(idx+1)
