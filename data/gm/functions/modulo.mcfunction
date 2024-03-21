#> gm:modulo
#
# ## Gets the modulo of two values
#
# Equivalent to `x % y`
#
# # Fails
# Will fail if `y = 0`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The numerator
#   y: float | double
#      The denominator
# @output
#   storage gm:io
#      out: double | "fail"

data modify storage gm:io out set value "fail"
# divide by 0 check
$data modify storage gm._temp_:std var1 set value $(y)f
execute if data storage gm._temp_:std {var1:0f} run return fail
# var1
$data modify storage gm._temp_:std var1 set value $(x)f
# var2
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(y)f]
data modify storage gm._temp_:std var2 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify storage gm._temp_:std tv2p set string storage gm._temp_:std var2 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2 set string storage gm._temp_:std var2 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value "-"
execute unless data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value ""
data modify storage gm._temp_:std var2 set string storage gm._temp_:std var2 0 -1
function gm:zzz/convert_to_double with storage gm._temp_:std
# var3
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(y)f]
data modify storage gm._temp_:std var3 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
# handling
function gm:zzz/modulo/truncate with storage gm._temp_:std
function gm:zzz/modulo/divide with storage gm._temp_:std
function gm:zzz/convert_to_double with storage gm._temp_:std
return run function gm:zzz/subtract_handling with storage gm._temp_:std

return fail
$tp invalid-input $(x) $(y) 0