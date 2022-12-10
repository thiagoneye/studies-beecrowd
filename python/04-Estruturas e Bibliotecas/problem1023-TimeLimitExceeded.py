# Execution

city_number = 0
output = list()
number_of_properties = int(input())

while number_of_properties != 0:
    city_number += 1

    total_residents = 0
    total_consumption = 0

    average_consumption_per_household = list()

    for _ in range(number_of_properties):
        amount_of_residents, consumption_per_household = input().split()

        amount_of_residents = int(amount_of_residents)
        consumption_per_household = int(consumption_per_household)

        consumption_per_person = int(consumption_per_household/amount_of_residents)
        total_residents += amount_of_residents
        total_consumption += consumption_per_household

        average_consumption_per_household.append([amount_of_residents, consumption_per_person])

    average_consumption = int(100*total_consumption/total_residents)/100

    average_consumption_per_household = sorted(average_consumption_per_household, key=lambda x: x[1])
    average_consumption_per_household = [f'{x}-{y}' for x,y in average_consumption_per_household]
    average_consumption_per_household = ' '.join(average_consumption_per_household)

    output.append(f'Cidade# {city_number}:')
    output.append(average_consumption_per_household)
    output.append(f'Consumo medio: {average_consumption} m3.\n')

    number_of_properties = int(input())

[print(value) for value in output]
