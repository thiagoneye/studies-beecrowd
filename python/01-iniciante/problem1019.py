# Inputs

t = int(input()) # Seconds

# Calculations

hou = int(t/(60*60))    # Hours
rest = int(t % (60*60))
min = int(rest/60)      # Minutes
sec = int(rest % 60)    # Seconds

# Outputs

print(str(hou) + ":" + str(min) + ":" + str(sec))
