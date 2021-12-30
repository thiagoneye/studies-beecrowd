# Time limit exceeded

# Inputs

numb = int(input())
data = list()

while (numb != 0):
    sequ = list()

    for i in range(numb):
        sequ.append(input())

    data.append(sequ)

    numb = int(input())

# Calculations

leng = list()

for sequ in data:
    sequ = sorted(sequ, key=len)
    min_seq = list()

    for i in range(len(sequ)):
        for j in range(len(sequ)):
            if (i < j):
                if ((sequ[j].find(sequ[i]) == 0) and (sequ[i] not in min_seq)):
                    min_seq.append(sequ[i])

    leng.append(len(sequ) - len(min_seq))

# Outputs

for i in leng:
    print(i)
