# Inputs

n = int(input())

# Main

for _ in range(n):
    value = int(input())

    if value == 0:
        print("NULL")
    elif abs(value) % 2 == 0:
        if value > 0:
            print("EVEN POSITIVE")
        else:
            print("EVEN NEGATIVE")
    else:
        if value > 0:
            print("ODD POSITIVE")
        else:
            print("ODD NEGATIVE")
