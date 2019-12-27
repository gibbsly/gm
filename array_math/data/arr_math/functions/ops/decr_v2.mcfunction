#removing last num
data remove storage arr_math:main div.v2.num[-1]
scoreboard players remove dv2dec= arr_math.main 1

#writing vals back
data modify storage arr_math:main v1 set from storage arr_math:main div.v1
data modify storage arr_math:main v2 set from storage arr_math:main div.v2

#comparing vars 
function arr_math:call/compare

#loop
execute if data storage arr_math:main {out:{result:2}} if score dv2dec= arr_math.main matches 1.. run function arr_math:ops/decr_v2