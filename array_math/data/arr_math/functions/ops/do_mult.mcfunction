#adding vals
data modify storage arr_math:main v2.num set from storage arr_math:main mult.v1
data modify storage arr_math:main v1.num set from storage arr_math:main out.num
data modify storage arr_math:main out.num set value []

#setting base val
execute store result storage arr_math:main mult.m int 1 run scoreboard players remove mult= arr_math.main 1
scoreboard players reset * arr_math.main
execute store result score base= arr_math.main run data get storage arr_math:in var1.base
execute store result score mult= arr_math.main run data get storage arr_math:main mult.m

#adding arrays together
function arr_math:ops/add_cur

#adding any carried over numbers if available
execute unless score temp= arr_math.main matches 0 run function arr_math:ops/write_carry_over

#loop
execute if score mult= arr_math.main matches ..0 if data storage arr_math:main mult.v2[0] run function arr_math:ops/find_next_mult
execute if score mult= arr_math.main matches 1.. run function arr_math:ops/do_mult