# Inputs

n, l, c = input().split()
text = input()   # Story

n = int(n)       # Number of words in the story
l = int(l)       # Maximum number of lines per page
c = int(c)       # Maximum number of characters per line

# Calculations

charac = 0
lines = 1
pages = 1

worlds = text.split()
for i in worlds:
    if ((charac + len(i)) <= c):
        charac += len(i) + 1
    else:
        charac = len(i) + 1
        if ((lines + 1) <= l):
            lines += 1
        else:
            lines = 1
            pages += 1

# Outputs

print(pages)
