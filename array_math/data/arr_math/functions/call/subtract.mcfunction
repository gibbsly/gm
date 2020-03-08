scoreboard players set error= arr_math.main 20
#checks to see if base values are the same for both numbers
execute store result score v1base= arr_math.main run data get storage arr_math:in var1.base
execute store result score v2base= arr_math.main run data get storage arr_math:in var2.base
execute unless score v1base= arr_math.main = v2base= arr_math.main run scoreboard players set error= arr_math.main 30
execute if score v1base= arr_math.main = v2base= arr_math.main run function arr_math:ops/sub_check

execute if score error= arr_math.main matches 20 run scoreboard players reset * arr_math.main