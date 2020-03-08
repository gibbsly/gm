#finding the difference between the decimal point positions
scoreboard players operation cur_dp= arr_math.main = dv1dec= arr_math.main
scoreboard players operation cur_dp= arr_math.main -= dv2dec= arr_math.main

scoreboard players operation t_cur_dp= arr_math.main = cur_dp= arr_math.main
scoreboard players operation t_cur_dp= arr_math.main -= pre_dp= arr_math.main
execute unless score con= arr_math.main matches ..1 if score t_cur_dp= arr_math.main matches ..-1 run scoreboard players operation t_cur_dp= arr_math.main *= -1= arr_math.main
scoreboard players operation cdp= arr_math.main += t_cur_dp= arr_math.main

execute if score cur_dp= arr_math.main = pre_dp= arr_math.main run scoreboard players add cdp= arr_math.main 1
scoreboard players operation pre_dp= arr_math.main = dv1dec= arr_math.main
scoreboard players operation pre_dp= arr_math.main -= dv2dec= arr_math.main
execute if score cur_dp= arr_math.main matches 0 unless score cdp= arr_math.main matches 0 run scoreboard players remove cdp= arr_math.main 1

#writing vals for addition
data modify storage arr_math:main v1 set from storage arr_math:main div.out
data modify storage arr_math:main out set from storage arr_math:main v1

#generating new number
data modify storage arr_math:main v2 set value {dec:0,pol:1,num:[0],base:0}
data modify storage arr_math:main v2.base set from storage arr_math:in var1.base
execute store result storage arr_math:main v2.num[0] int 1 run scoreboard players get divi= arr_math.main
execute store result storage arr_math:main v2.dec int 1 run scoreboard players get cdp= arr_math.main

data modify storage arr_math:main out.num set value []

#doing addition
scoreboard players set temp= arr_math.main 0
function arr_math:ops/dec_move
function arr_math:ops/add_cur

#execute store result score tcdp= arr_math.main run data get storage arr_math:main out.dec

#writing from output
data modify storage arr_math:main div.out set from storage arr_math:main out