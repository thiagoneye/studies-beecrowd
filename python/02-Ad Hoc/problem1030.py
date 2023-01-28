nc = int(input())

for case in range(nc):
    n, k = input().split()
    n, k = int(n), int(k)

    people = list(range(1, n+1))
    next = 0

    while len(people) > 1:
        next += k -1

        if next >= len(people):
            next %= len(people)

        person = people.pop(next)

    print(f'Case {case+1}: {people[0]}')
