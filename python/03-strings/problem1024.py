# Inputs

numb_worlds = int(input())

list_worlds = list()
for i in range(numb_worlds):
    world = input()
    list_worlds.append(world)

# Calculations

list_encoding = list()

for world in list_worlds:
    first_world = ''

    # First encoding
    for letter in world:
        unicod = ord(letter)

        if (unicod >= 65 and unicod <= 90) or (unicod >= 97 and unicod <= 122):
            new_letter = chr(unicod + 3)
        else:
            new_letter = letter

        first_world += new_letter

    # Second encoding
    second_world = first_world[::-1]

    # Third encoding
    half = int(len(second_world)/2)
    third_world = second_world[0:half]

    for letter in second_world[half:]:
        third_world += chr(ord(letter) - 1)

    list_encoding.append(third_world)

# Outputs

for i in list_encoding:
    print(i)
