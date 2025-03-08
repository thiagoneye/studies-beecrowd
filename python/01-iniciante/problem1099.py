# Inputs

n = int(input())

# Outputs

for _ in range(n):
    # Put test case
    a, b = input().split()
    
    # Convert the test case into an integer
    a = int(a)
    b = int(b)

    # Sort the test case
    x = max([a, b])
    y = min([a, b])

    # Calculation
    sum_of_odd = 0

    for value in range(y, x):
        if value != y:
            if value % 2 == 1:
                sum_of_odd += value

    # Print value
    print(sum_of_odd)
