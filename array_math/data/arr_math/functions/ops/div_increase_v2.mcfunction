#adding to v2 
data modify storage arr_math:main v2.num append value 0
scoreboard players add dv2dec= arr_math.main 1

#getting length of array
execute store result score v1length= arr_math.main run data get storage arr_math:main v1.num
execute store result score v2length= arr_math.main run data get storage arr_math:main v2.num

#loop
execute if score v1length= arr_math.main >= v2length= arr_math.main run function arr_math:ops/div_increase_v2