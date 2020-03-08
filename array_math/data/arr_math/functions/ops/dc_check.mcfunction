#doing division
scoreboard players set mdp= arr_math.main 0
function arr_math:call/divide

#writing data
data modify storage arr_math:main dc.out.num prepend value 0

#setting up for flattening
execute store result score base= rev_conv.num run data get storage arr_math:in var2.base
data modify storage rev_conv:main in set from storage arr_math:main out.rem

#flattening
function rev_conv:call

#writing flattened value
execute store result storage arr_math:main dc.out.num[0] int 1 run scoreboard players get out= rev_conv.num

data remove storage arr_math:main out.rem

#comparing values
data modify storage arr_math:main v1 set from storage arr_math:main out
function arr_math:call/compare
data modify storage arr_math:main v1 set from storage arr_math:main out
execute unless data storage arr_math:main out{result:2} run function arr_math:ops/dc_check