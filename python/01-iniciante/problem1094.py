# Inputs

n = int(input())

# Outputs

c = 0
r = 0
s = 0

for _ in range(n):
    a, b = input().split()
    a = int(a)

    if b == "C":
        c += a
    elif b == "R":
        r += a
    else:
        s += a

total = c + r + s

print(f"Total: {total} cobaias")
print(f"Total de coelhos: {c}")
print(f"Total de ratos: {r}")
print(f"Total de sapos: {s}")
print(f"Percentual de coelhos: {c*100/total:.2f} %")
print(f"Percentual de ratos: {r*100/total:.2f} %")
print(f"Percentual de sapos: {s*100/total:.2f} %")
