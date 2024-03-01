#> gm:cos
#
# ## Gets the cosine of a value
#
# Equivalent to `cos(x)`
#
# Outputs from `-1` to `+1`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to get the cosine of in degrees
# @output
#   storage gm:io
#      out: double | "fail"

data modify storage gm:io out set value "fail"
$execute rotated $(x) 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 as 91bb5-0-0-0-ffff run return run function gm:zzz/cos_handling

return fail
$tp invalid-input $(x) 0 0