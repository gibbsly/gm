#creating output
data modify storage arr_math:main out set value {num:0}

#exporting to scoreboard
function arr_math:call/scoreboard/export

#adding decimal point
execute if score error= arr_math.main matches 1.. run data modify storage arr_math:main out.err set value "unable to flatten, number too large"
execute unless score error= arr_math.main matches 1.. run function arr_math:ops/flat_dec

scoreboard players reset * arr_math.main