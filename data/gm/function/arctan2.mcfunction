#> gm:arctan2
#
# ## Gets the arctangent of a point
#
# Equivalent to `atan2(y, x)`
# 
# Measures the counterclockwise angle from the positive x axis to the point `(x, y)`.
#
# Outputs in degrees from `-180` to `+180`
#
# # Fails
# Will fail if `x=0` and `y=0` at the same time
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The x position of the point
#   y: float | double
#      The y position of the point
# @output
#   storage gm:io
#      out: float | "fail"

data modify storage gm:io out set value "fail"
$data modify storage gm._temp_:std var2 set value $(x)f
function gm:zzz/inverse_trig/negate_val with storage gm._temp_:std
$data modify storage gm._temp_:std var1 set value $(y)f
execute if data storage gm._temp_:std {var1:0f, var2:0f} run return fail
execute as 91bb5-0-0-0-ffff run return run function gm:zzz/inverse_trig/handling with storage gm._temp_:std

return fail
$tp invalid-input $(x) $(y) 0