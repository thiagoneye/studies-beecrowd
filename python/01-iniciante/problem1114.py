# Main

continue_algorithm = True

while continue_algorithm:
    password = input()

    if password != "2002":
        print("Senha Invalida")
    else:
        print("Acesso Permitido")
        continue_algorithm = False
