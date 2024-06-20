#> gm:tan
#
# ## Gets the tangent of a value
#
# Equivalent to `tan(x)`
#
# Can return `Infinityf` as the value approaches infinity
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to get the cosine of in degrees
# @output
#   storage gm:io
#      out: float | "fail"

data modify storage gm:io out set value "fail"
$execute rotated $(x) 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 as 91bb5-0-0-0-ffff run return run function gm:zzz/tan_handling

return fail
$tp invalid-input $(x) 0 0