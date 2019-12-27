#adding current val to total
execute store result score zct= arr_math.main run data get storage arr_math:main temp[0]
data remove storage arr_math:main temp[0]
scoreboard players operation zc= arr_math.main += zct= arr_math.main

#loop
execute if data storage arr_math:main temp[0] run function arr_math:ops/div_zero_check