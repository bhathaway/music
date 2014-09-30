# Basic Idea is to propagate an intervalic basis, normalize to [1, 2] and see what it looks like.

# The basis is 6/5, 5/4, and 4/3. You might think that 3/2 is missing, but that's the product of 6/5 and 5/4, so
# That would, in fact, be redundant. We can very quickly get to minor and major 6ths, in fact, by 4/3 * 6/5 and
# 4/3 * 5/4. Now the only trick is figuring out how to efficiently count the calculations. Since multiplication is
# commutative and associative, any mixed combination can be re-ordered so that the intervals are arranged in
# ascending order. There is no limit, of course, to the propagation, so we must start with deciding how to limit it,
# which seems the natural idea would be to limit the maximum number of terms in the product. Given that, the
# algorithm could be:
# Initial value: 1
# Current interval choice: 4/3
# Decision point, stop?, continue interval product, change interval

from fractions import *
from math import *

TERM_LIMIT=5

interval_set = set()

def helper(current_product, current_term, term_count):
    global interval_set
    if term_count == TERM_LIMIT:
        return
    if current_term == 1:
        result = current_product * Fraction(4, 3)
        if result >= 2:
            result /= 2
        interval_set.add(result)
        helper(result, 1, term_count + 1) 
        helper(result, 2, term_count + 1)
        helper(result, 3, term_count + 1)
    elif current_term == 2:
        result = current_product * Fraction(5, 4)
        if result >= 2:
            result /= 2
        interval_set.add(result)
        helper(result, 2, term_count + 1)
        helper(result, 3, term_count + 1)
    elif current_term == 3:
        result = current_product * Fraction(6, 5)
        if result >= 2:
            result /= 2
        interval_set.add(result)
        helper(result, 3, term_count + 1)

helper(Fraction(1, 1), 1, 0)
interval_list = list(interval_set)
interval_list.sort()
eq_list = []
for f in interval_list:
    eq_list.append((log(f)/log(2))*12.0)


