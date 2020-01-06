scoreboard players set error= arr_math.main 20
#setting up output
data modify storage arr_math:main out set value {dec:0,num:[],pol:1,base:0}

#setting polarity
execute if score in= arr_math.main matches ..-1 run data modify storage arr_math:main out.pol set value -1
execute if score in= arr_math.main matches 0.. run data modify storage arr_math:main out.pol set value 1
execute store result score in= base_conv.num run data get storage arr_math:main out.pol

#setting base
execute unless score base= arr_math.main matches 2.. run scoreboard players set base= arr_math.main 10
execute store result storage arr_math:main out.base int 1 run scoreboard players operation base= base_conv.num = base= arr_math.main

#doing conversion
scoreboard players operation in= base_conv.num *= in= arr_math.main
function base_conv:call
data modify storage arr_math:main out.num set from storage base_conv:main out

scoreboard players reset * arr_math.main