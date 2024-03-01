#> gm:arccos
#
# ## Gets the arccosine of a value
#
# Equivalent to `cos⁻¹(x)`
#
# Outputs in degrees from `0` to `+180`
#
# # Fails
# Will fail if `x < -1` or if `x > 1`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to get the arccosine of
# @output
#   storage gm:io
#      out: float | "fail"

data modify storage gm:io out set value "fail"
$data modify storage gm._temp_:std var1 set value [0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(x)f]
execute unless function gm:zzz/inverse_trig/get_opposite run return fail
$data modify storage gm._temp_:std var2 set value $(x)f
function gm:zzz/inverse_trig/negate_val with storage gm._temp_:std
data modify storage gm._temp_:std var1 set from storage gm:io out
execute as 91bb5-0-0-0-ffff run return run function gm:zzz/inverse_trig/handling with storage gm._temp_:std

return fail
$tp invalid-input $(x) 0 0