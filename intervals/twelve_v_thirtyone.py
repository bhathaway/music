from fractions import *
from math import *

interval_set = set()

for diff in range(1, 6):
    for denom in range(1, 13 - diff):
        f = Fraction(denom+diff, denom)
        if f < 2:
            interval_set.add(Fraction(denom+diff, denom))

interval_list = list(interval_set)
interval_list.sort()

def report(division, f):
    closest_int = floor(division * (log(f) / log(2)) + .5)
    print("Fraction: ", f)
    print("Closest division in ", division, "-ET: ", closest_int)
    error = ((2.0**(float(closest_int)/division))/f - 1.0) * 100.0;
    print("Error: ", error)
    print()

for item in interval_list:
    report(31, item)

