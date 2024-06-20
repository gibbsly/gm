#> gm:zzz/inverse_trig/range_check
#
# Subtracts var1 from 1, saves it to x, and saves the polarity of x to v1sqp (var1 squared polarity)
#
# This is later used to check if sin(θ) or cos(θ) is between -1 and 1
# (Because `1 - sin²(θ)` or `1 - cos²(θ)` will always be greater than 0 if it's valid)
#
# ---
# @context any
# @internal

$execute positioned ~ 1 ~ run tp 91bb5-0-0-0-ffff ~ ~-$(var1) ~
data modify storage gm._temp_:std x set from entity 91bb5-0-0-0-ffff Pos[1]
data modify storage gm._temp_:std v1sqp set string storage gm._temp_:std x 0 1