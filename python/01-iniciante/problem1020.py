# Inputs

days = int(input()) # Days

# Calculations

yea = int(days/(365))  # Years
rest = int(days % 365)
mon = int(rest/30)     # Months
day = int(rest % 30)   # Days

# Outputs

print(str(yea) + " ano(s)")
print(str(mon) + " mes(es)")
print(str(day) + " dia(s)")
