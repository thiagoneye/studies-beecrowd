# Inputs

n = int(input())

# Outputs

for _ in range(n):
    a, b, c = input().split()
    a, b, c = float(a), float(b), float(c)
    average = (a*2 + b*3 + c*5)/10
    print(round(average, 1))
