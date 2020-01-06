scoreboard players set error= arr_math.main 20
#creating output
data modify storage arr_math:main out set value {num:0}

#exporting to scoreboard
function arr_math:call/scoreboard/export

#adding decimal point
execute unless score error= arr_math.main matches 10..19 run function arr_math:ops/flat_dec

execute unless score error= arr_math.main matches 10..19 run scoreboard players reset * arr_math.main