#> gm:zzz/sqrt/positive_subtract
#
# Subtracts var2 from var1. Doesn't have to check for polarity, because var1 and var2 will always be greater than 0
# Also subtracts the threshold
#
# ---
# @context any
# @within gm:zzz/sqrt_handling
$execute positioned ~ $(var1) ~ positioned ~ ~-0.000000001 ~ run tp 91bb5-0-0-0-ffff 29999999 ~-$(var2) 91665
data modify storage gm._temp_:std v1m2p set string entity 91bb5-0-0-0-ffff Pos[1] 0 1