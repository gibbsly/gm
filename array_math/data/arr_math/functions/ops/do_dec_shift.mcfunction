#adding 0 to the needed value array
execute if score v1dec= arr_math.main < v2dec= arr_math.main run data modify storage arr_math:main v1.num append value 0
execute if score v1dec= arr_math.main > v2dec= arr_math.main run data modify storage arr_math:main v2.num append value 0

scoreboard players remove dec_pos= arr_math.main 1

#loop
execute if score dec_pos= arr_math.main matches 1.. run function arr_math:ops/do_dec_shift