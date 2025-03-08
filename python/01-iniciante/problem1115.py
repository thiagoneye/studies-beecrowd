# Main

continue_algorithm = True

while continue_algorithm:
    x, y = input().split()
    
    x = int(x)
    y = int(y)

    if x == 0 or y == 0:
        continue_algorithm = False
    elif x > 0 and y > 0:
        print("primeiro")
    elif x < 0 and y > 0:
        print("segundo")
    elif x < 0 and y < 0:
        print("terceiro")
    else:
        print("quarto")
