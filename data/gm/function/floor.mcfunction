#> gm:floor
#
# ## Gets the floor of a value
#
# Rounds down to the nearest whole integer
#
# Has a max output range of -20000000 to 19999999, outside of which, this function returns 0
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to floor
# @output
#   storage gm:io
#      out: double | "fail"

data modify storage gm:io out set value "fail"
$execute positioned ~ $(x) ~ align y run tp 91bb5-0-0-0-ffff ~ ~ ~
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff Pos[1]
tp 91bb5-0-0-0-ffff 29999999 0 91665
return run data get storage gm:io out

return fail
$tp invalid-input $(x) 0 0