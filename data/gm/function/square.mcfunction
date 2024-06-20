#> gm:square
#
# ## Gets the square of a value
#
# Equivalent to `x²`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to square
# @output
#   storage gm:io
#      out: float | "fail"

data modify storage gm:io out set value "fail"
$data modify storage gm._temp_:std var1 set value [0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(x)f]
data modify storage gm._temp_:std var1[-1] set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff transformation.translation[0]
return run data get storage gm:io out

return fail
$tp invalid-input $(x) 0 0