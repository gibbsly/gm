#writing div temp vals to operation registers
data modify storage arr_math:main div.v1 set from storage arr_math:main out
data modify storage arr_math:main v1 set from storage arr_math:main div.v1
data modify storage arr_math:main v2 set from storage arr_math:main div.v2
data modify storage arr_math:main out.num set value []

#doing subtraction
scoreboard players add divi= arr_math.main 1
function arr_math:ops/sub_cur

#checking for zero
data modify storage arr_math:main temp set from storage arr_math:main out.num
scoreboard players set zc= arr_math.main 0
function arr_math:ops/div_zero_check

#loop
execute unless score temp= arr_math.main matches ..-1 if score zc= arr_math.main matches 1.. run function arr_math:ops/rep_sub

#after this function the remainder will be in div.v1