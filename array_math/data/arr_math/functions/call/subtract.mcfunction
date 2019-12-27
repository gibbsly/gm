#checks to see if base values are the same for both numbers
execute store result score v1base= arr_math.main run data get storage arr_math:in var1.base
execute store result score v2base= arr_math.main run data get storage arr_math:in var2.base
execute if score v1base= arr_math.main = v2base= arr_math.main run function arr_math:ops/sub_check

scoreboard players reset * arr_math.main