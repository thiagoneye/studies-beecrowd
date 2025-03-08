# Main

continue_algorithm = True

while continue_algorithm:
    x, y = input().split()

    x = int(x)
    y = int(y)

    if x == y:
        continue_algorithm = False
    elif x > y:
        print("Decrescente")
    else:
        print("Crescente")
        