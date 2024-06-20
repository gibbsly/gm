#> gm:multiply
#
# ## Gets the product of two values
#
# Equivalent to `x * y`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      One of the values to multiply
#   y: float | double
#      One of the values to multiply
# @output
#   storage gm:io
#      out: float | "fail"

data modify storage gm:io out set value "fail"
$data modify storage gm._temp_:std var1 set value [0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(y)f]
data modify storage gm._temp_:std var1[-1] set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff transformation.translation[0]
return run data get storage gm:io out

return fail
$tp invalid-input $(x) $(y) 0