#!/usr/bin/python

import sys
from fractions import *
from math import *

def usage():
    print("%s: <denom limit> <limit>" % sys.argv[0])

if len(sys.argv) != 3:
    usage()
    sys.exit(1)

denom_limit = int(sys.argv[1])
limit = int(sys.argv[2])

interval_set = set()

for diff in range(1, denom_limit + 1):
    for denom in range(1, denom_limit + 1 - diff):
        f = Fraction(denom+diff, denom)
        if f < 2:
            interval_set.add(Fraction(denom+diff, denom))

interval_list = list(interval_set)
interval_list.sort()

print(interval_list)

def getError(divison, f):
    closest_int = floor(division * (log(f) / log(2)) + .5)
    return ((2.0**(float(closest_int)/division))/f - 1.0) * 100.0;

def getWeightedError(divison, f):
    closest_int = floor(division * (log(f) / log(2)) + .5)
    return ((2.0**(float(closest_int)/division))/f - 1.0) * 100.0 / f.denominator;

def rmsOverIntervals(division):
    rms = 0
    for interval in interval_list:
        e = getError(division, interval)
        rms += e * e
    rms /= len(interval_list)
    rms = sqrt(rms)
    return rms

least_error = 10000
least_error_division = 2

next_best = []

for division in range(2, limit+1):
    e = rmsOverIntervals(division)
    if abs(e) < abs(least_error):
        least_error = e
        least_error_division = division
        next_best.append(least_error_division)

print("%i is the best division of the octave for %i-limit ratios with rms %f%%" %
  (least_error_division, denom_limit, least_error))
print(next_best)
