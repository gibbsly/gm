#write current values to scoreboard
scoreboard players set v1= arr_math.main 0
scoreboard players set v2= arr_math.main 0
execute unless data storage arr_math:main {v1:{num:["end"]}} run function arr_math:ops/store_v1
execute unless data storage arr_math:main {v2:{num:["end"]}} run function arr_math:ops/store_v2

#adding to temp value
scoreboard players operation temp= arr_math.main += v1= arr_math.main
scoreboard players operation temp= arr_math.main += v2= arr_math.main

#moving values to hold score
scoreboard players operation hold= arr_math.main = temp= arr_math.main

#carrying the one if necessary
execute if score hold= arr_math.main >= base= arr_math.main run scoreboard players set temp= arr_math.main 1
execute if score hold= arr_math.main < base= arr_math.main run scoreboard players set temp= arr_math.main 0
execute if score hold= arr_math.main >= base= arr_math.main run scoreboard players operation hold= arr_math.main -= base= arr_math.main

#writing value to output array
execute store result storage arr_math:main temp int 1 run scoreboard players get hold= arr_math.main
data modify storage arr_math:main out.num prepend from storage arr_math:main temp

#loop condition
execute unless data storage arr_math:main {v1:{num:["end"]},v2:{num:["end"]}} run function arr_math:ops/add_cur