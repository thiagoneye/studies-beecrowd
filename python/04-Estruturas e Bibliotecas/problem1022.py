# Functions

def add(n1: int, d1: int, n2: int, d2: int):
    return (n1*d2 + n2*d1), (d1*d2)

def diff(n1: int, d1: int, n2: int, d2: int):
    return (n1*d2 - n2*d1), (d1*d2)

def product(n1: int, d1: int, n2: int, d2: int):
    return (n1*n2), (d1*d2)

def division (n1: int, d1: int, n2: int, d2: int):
    return (n1*d2), (n2*d1)

def euclides(a: int, b: int) -> int:
    """
    Euclid's Algorithm for the Greatest Common Divisor.
    """
    if b == 0:
        return a

    return euclides(b, a % b)

def execution():
    n1, _, d1, operator, n2, _, d2 = input().split()

    n1 = int(n1)
    d1 = int(d1)
    n2 = int(n2)
    d2 = int(d2)

    if operator == '+':
        n, d = add(n1, d1, n2, d2)
    elif operator == '-':
        n, d = diff(n1, d1, n2, d2)
    elif operator == '*':
        n, d = product(n1, d1, n2, d2)
    elif operator == '/':
        n, d = division(n1, d1, n2, d2)

    gcd = euclides(n, d)

    print('{}/{} = {}/{}'.format(n, d, int(n/gcd), int(d/gcd)))

# Execution

number_of_executions = int(input())

for _ in range(number_of_executions):
    execution()
