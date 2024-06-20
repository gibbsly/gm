#> gm:divide
#
# ## Gets the quotient of two values
#
# Equivalent to `x / y`
#
# `x` can be either a single number, or an array of numbers, up to 3 elements long
# 
# If `x` is an array, the result is equivalent to `[x[0]/y,x[1]/y,x[2]/y]`
#
# ---
# @context any
# @api
# @macro
#   x: (float | double)[] | float | double
#      The numerator, or array of numerators
#   y: float | double
#      The denominator
# @output
#   storage gm:io
#      out: float[] | float | "fail"

data modify storage gm:io out set value "fail"
data merge storage gm._temp_:check {type:0,string:["a"],number:[1d],array:[[]],object:[{}]}
$execute store result storage gm._temp_:check type int 1 run function gm:zzz/get_data_type {value:$(x)}
$execute if data storage gm._temp_:check {type:1} run return run function gm:zzz/divide_handling {var1:$(x),var2:$(y)}
$execute if data storage gm._temp_:check {type:2} run return run function gm:zzz/divide_array {array:$(x),divisor:$(y)}

return fail
$tp invalid-input 0 $(y) 0