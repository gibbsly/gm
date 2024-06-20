#> gm:arctan
#
# ## Gets the arctangent of a value
#
# Equivalent to `tan⁻¹(x)`
#
# Outputs in degrees from `-90` to `+90`
#
# # Fails
# Will fail if `x < -1719` or if `x > 1719`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to get the arctangent of
# @output
#   storage gm:io
#      out: float | "fail"

data modify storage gm:io out set value "fail"
$data merge storage gm._temp_:std {var1:[0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],var7:[0d,0d,0d,1d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,0d]}
data modify storage gm._temp_:std pol set string storage gm._temp_:std var1[3] 0 1
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(x)f]
data modify storage gm._temp_:std var1[-1] set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm._temp_:std var5 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:zzz/arctan/add_one with storage gm._temp_:std
data modify storage gm._temp_:std var7[-1] set from storage gm._temp_:std var6
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var7
data modify storage gm._temp_:std x set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:sqrt with storage gm._temp_:std
data modify storage gm._temp_:std var6 set from storage gm:io out
data modify storage gm._temp_:std var7[3] set from storage gm._temp_:std var5
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var7
data modify storage gm._temp_:std x set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:sqrt with storage gm._temp_:std
data modify storage gm._temp_:std var2 set from storage gm._temp_:std var6
function gm:zzz/inverse_trig/negate_val with storage gm._temp_:std
data modify storage gm._temp_:std var1 set from storage gm:io out
execute if data storage gm._temp_:std {pol:"-"} run function gm:zzz/arctan/negate_val with storage gm._temp_:std
execute as 91bb5-0-0-0-ffff run return run function gm:zzz/inverse_trig/handling with storage gm._temp_:std

return fail
$tp invalid-input $(x) 0 0