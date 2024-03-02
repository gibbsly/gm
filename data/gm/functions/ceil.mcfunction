#> gm:ceil
#
# ## Gets the ceil of a value
#
# Rounds up to the nearest whole integer
#
# Has a max output range of -20000000 to 19999999, outside of which, this function returns 0
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to ceil
# @output
#   storage gm:io
#      out: double | "fail"

data modify storage gm:io out set value "fail"
$data modify storage gm._temp_:std var1 set value [0d,0d,0d,$(x)d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,-1d]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm._temp_:std x set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:floor with storage gm._temp_:std
data modify storage gm._temp_:std var1[3] set from storage gm:io out
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff transformation.translation[0]
return run data get storage gm:io out

return fail
$tp invalid-input $(x) 0 0