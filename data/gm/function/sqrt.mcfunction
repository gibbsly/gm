#> gm:sqrt
#
# ## Gets the square root of a value
#
# Equivalent to `√x`
#
# Uses a recursive algorithm to accurately approximate the square root of `x`.
#
# # Fails
# Will fail if `x < 0`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to get the square root of
# @output
#   storage gm:io
#      out: float | "fail"

scoreboard players set __sqrt_loop gm.std 0
data modify storage gm:io out set value "fail"
$data merge storage gm._temp_:std {var1:$(x), var2:1, var3:[0d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,2d], var4:[0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,0f]}
$return run function gm:zzz/sqrt_handling {var1:$(x), var2:1}

return fail
$tp invalid-input -$(x) 0 0