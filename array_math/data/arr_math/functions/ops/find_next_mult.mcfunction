
#setting data
data modify storage arr_math:main mult.v1 append value 0
execute store result score mult= arr_math.main run data get storage arr_math:main mult.v2[-1]
data remove storage arr_math:main mult.v2[-1]

execute store result storage arr_math:main mult.m int 1 run scoreboard players get mult= arr_math.main

#loop
execute if score mult= arr_math.main matches ..0 if data storage arr_math:main mult.v2[0] run function arr_math:ops/find_next_mult