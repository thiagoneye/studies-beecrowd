# Inputs

a, b, c, d = input().split()
a = float(a)
b = float(b)
c = float(c)
d = float(d)

# Calculations and Outputs

mean = (2*a + 3*b + 4*c + 1*d)/(2 + 3 + 4 + 1)

print("Media: %.1f" % mean)
if mean >= 7.0:
    print("Aluno aprovado.")
elif mean < 5.0:
    print("Aluno reprovado.")
else:
    print("Aluno em exame.")
    e = float(input())
    print("Nota do exame: %.1f" % e)
    final = (mean + e)/2
    if final >= 5.0:
        print("Aluno aprovado.")
    else:
        print("Aluno reprovado.")
    print("Media final: %.1f" % final)
