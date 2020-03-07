#writing from inputs
data modify storage arr_math:main v1 set from storage arr_math:main div.v1
data modify storage arr_math:main v2 set from storage arr_math:main div.pv2
scoreboard players set dv1dec= arr_math.main 0
scoreboard players set dv2dec= arr_math.main 0

scoreboard players add con= arr_math.main 1

#shifts v2 until it is greater than v1
function arr_math:ops/inc_v2

#backing up v1 and v2
data modify storage arr_math:main div.v1 set from storage arr_math:main v1
data modify storage arr_math:main div.v2 set from storage arr_math:main v2

#comparing vars 
function arr_math:call/compare

#reducing v2 if necessary/possible
execute if data storage arr_math:main {out:{result:2}} if score dv2dec= arr_math.main matches 1.. run function arr_math:ops/decr_v2

#increasing v1 if needed
execute if data storage arr_math:main {out:{result:2}} if score dv2dec= arr_math.main matches ..0 run function arr_math:ops/inc_v1

#doing repeated subtraction
scoreboard players set divi= arr_math.main 0
data modify storage arr_math:main out set from storage arr_math:main div.v1
function arr_math:ops/rep_sub
execute if score temp= arr_math.main matches ..-1 if score zc= arr_math.main matches 1.. run scoreboard players remove divi= arr_math.main 1

#generating output
function arr_math:ops/gen_div_out

#trimming remainder
data modify storage arr_math:main temp set from storage arr_math:main div.v1.num[0]
execute if data storage arr_math:main {temp:0} run function arr_math:ops/trim_dv1

#checking for remainder
execute unless score zc= arr_math.main matches 0 run function arr_math:ops/rem_check

#loop
execute unless score zc= arr_math.main matches 0 if score cdp= arr_math.main < mdp= arr_math.main unless score tcdp= arr_math.main >= mdp= arr_math.main run function arr_math:ops/do_div