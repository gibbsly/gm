#zero check for remainder
data modify storage arr_math:main temp set from storage arr_math:main div.v1.num
scoreboard players set zc= arr_math.main 0
function arr_math:ops/div_zero_check