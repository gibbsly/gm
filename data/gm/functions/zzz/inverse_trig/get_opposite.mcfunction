#> gm:zzz/inverse_trig/get_opposite
#
# Used to convert sin(θ) to cos(θ) or vice versa
#
# ---
# @context any
# @internal

data modify storage gm._temp_:std var1[-1] set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm._temp_:std var1 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:zzz/inverse_trig/range_check with storage gm._temp_:std
execute if data storage gm._temp_:std {v1sqp:"-"} run return fail
function gm:sqrt with storage gm._temp_:std
return 1