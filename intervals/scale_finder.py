from Fractions import *
from math import *

# Ok. I have some goals, here. I've thought of a way of categorizing the interplay of harmony and melody by
# considering some important factors:
# 1. The existence of subharmonics in the scale. A flat is super-important in the minor scale, a working
# representative of the 1/5 subharmonic. Similarly F is very important in the major scale, a working representative
# of the 1/3 subharmonic.
# 2. The existence of harmonics in the scale. This practically goes without saying.
# 3. I'm not going to measure this, because I think we get it for free, but the alternation between harmonic
#    and subharmonic notes in the scale is desirable; I think it adds to the sense of progression.
# 4. The number of melodic generators needed to construct the notes as a series of products starting from tonic.
# 5. The quality of modes. This might be measured, for example, by the distance of a mode to desirable harmonics or
#    subharmonics. This should also cover possible chord combinations of the given notes, since in some sense this
#    is the same as moving the tonic.
# 6. Perceptible difference in melodic generators. It's important that the generators not be terribly different
#    from each other, or humans won't really be able to perceive or perform correctly.

# My guess is that in reality many of these goals are in conflict. Adding more harmonics and subharmonics will
# likely fracture the needed melodic generators. So despite the notion that more choices will add richness and
# interest, it will make progressions less regular.

# Basis:
# cents, hundredths of an equal-tempered semitone. I have found, in practice, that I cannot differentiate a one cent
# difference in absolute pitch. I can, of course, hear the impact on intervals, especially high overtone
# interference. But my thought here is that this is extreme fine tuning that can be done instinctually without
# changing the perceived pitch. What is this number? I find 81/80 to be an excellent reference point. This is
# the syntonic comma, the ratio of a major to minor tone, or 9/8 to 10/9. Both of these are called a "D" in the
# major scale. The difference between these two pitches is perceptible except for possibly in the low bass. The
# syntonic comma is roughly 22 cents. I think the general rule of thumb I've seen on the 'net is about 5 cents as
# the just noticeable difference in pitch.

# Goal: Automatically generate scales and rate them based on some weighted sum of the above criteria.
# So, I need to first objectify the judgements. I have decided that some concepts should go by the wayside.
# Trying to insist on regularity is overconstraining, when the closeness of modes to the "A-list" may already
# implicitly require this.

# Measure 1: The number of unique primes in the numerators.
# Measure 2: The number of unique primes in the denominators.
# Measure 3: The distance of modes to the A-list.

# The first measures are fairly easy to implement. But how should I define 3? First, the measure is relative to
# an "A-list", which is purely subjective, but should probably contain the major harmonics and subharmonics under
# consideration, and many of their first hops. I would say it's better to be generous here than restrictive,
# because dissonant intervals have shown their use in music many times over.

def closest(x, y_list):
    smallest_ratio = 2
    smallest_index = -1
    for i in range(len(y_list)):
       ratio = x / y_list[i]
       if ratio < 1:
           ratio = 1/ratio
       if ratio < smallest_ratio:
           smallest_ratio=ratio
           smallest_index = i
    return y_list[i]

def modulate_nearest(scale, bank, value):
    new_scale = list(scale)
    for i in range(len(new_scale)):
        new_ratio = new_scale[i] / value
        if new_ratio < 1:
            new_ratio *= 2
        new_scale[i] = closest(new_ratio, bank)
    new_scale.sort()
    return new_scale

def cents(x):
    return log(x)/log(2)*1200
