# Inputs

world1 = input()
world2 = input()
world3 = input()

# Outputs

animal = {"vertebrado": {"ave": {"carnivoro": "aguia", "onivoro": "pomba"}, "mamifero": {"onivoro": "homem", "herbivoro": "vaca"}}, "invertebrado": {"inseto": {"hematofago": "pulga", "herbivoro": "lagarta"}, "anelideo": {"hematofago": "sanguessuga", "onivoro": "minhoca"}}}

print(animal[world1][world2][world3])
