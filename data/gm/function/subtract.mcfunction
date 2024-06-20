#> gm:subtract
#
# ## Gets the difference between two values
#
# Equivalent to `x - y`
#
# Has a max output range of -20000000 to 19999999, outside of which, this function returns 0
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to be subtracted from
#   y: float | double
#      The value to subtract
# @output
#   storage gm:io
#      out: double | "fail"

data modify storage gm:io out set value "fail"
$data modify storage gm._temp_:std var1 set value $(x)
$data modify storage gm._temp_:std var2 set value $(y)
$data modify storage gm._temp_:std tv2p set value $(y)
data modify storage gm._temp_:std tv2p set string storage gm._temp_:std tv2p 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2 set string storage gm._temp_:std var2 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2dt set string storage gm._temp_:std var2 -1
execute if data storage gm._temp_:std {tv2p:"-"} if data storage gm._temp_:std {v2dt:"d"} run data modify storage gm._temp_:std var2 set string storage gm._temp_:std var2 0 -1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value ""
execute unless data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value "-"
function gm:zzz/convert_to_double with storage gm._temp_:std
return run function gm:zzz/subtract_handling with storage gm._temp_:std

return fail
$tp invalid-input $(x) $(y) 0