# Inputs

data0 = input()
data1 = input()
data2 = input()
data3 = input()

# Calculations

day0 = data0.replace('Dia ', '')
hour0, minute0, second0 = data1.split(' : ')
day1 = data2.replace('Dia ', '')
hour1, minute1, second1 = data3.split(' : ')

time0 = ((((int(day0)*24) + int(hour0))*60) + int(minute0))*60 + int(second0)
time1 = ((((int(day1)*24) + int(hour1))*60) + int(minute1))*60 + int(second1)

delta = time1 - time0

seconds = delta % 60
rest = (delta - seconds)/60   # Seconds to minutes
minutes = rest % 60
rest = (rest - minutes)/60    # Minutes to hours
hours = rest % 24
rest = (rest - hours)/24      # Hours to days
days = rest

# Outputs

print('%d dia(s)' % days)
print('%d hora(s)' % hours)
print('%d minuto(s)' % minutes)
print('%d segundo(s)' % seconds)
