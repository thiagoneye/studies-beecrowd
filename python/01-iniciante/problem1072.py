# Inputs

n = int(input())

val_in = 0
val_out = 0

for i in range(n):
    value = int(input())
    if value in range(10, 21):
        val_in += 1
    else:
        val_out += 1

# Outputs

print("%d in" % val_in)
print("%d out" % val_out)
