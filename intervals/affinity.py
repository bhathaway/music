from fractions import *
from math import *

# Make sure that all intervals are less than the repeat value (usually 2)
def showAffinities(interval_list, repeat):
    for item in interval_list:
        same_count = 0
        for i in interval_list:
            x = i * item
            if x > repeat:
                x /= repeat
            if x in interval_list:
                same_count += 1
        print("interval: %s, affinity: %i" % (repr(item), same_count))
