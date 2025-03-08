# Main

continue_algorithm = True

while continue_algorithm:
    m, n = input().split()

    m = int(m)
    n = int(n)

    if m <= 0 or n <= 0:
        continue_algorithm = False
    else:
        a = min([m, n])
        b = max([m, n])
    
        values = " ".join([str(value) for value in range(a, b+1)])
        print(f"{values} Sum={sum(list(range(a, b+1)))}")
