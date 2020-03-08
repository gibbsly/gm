#creating output
#setting up for flattening
execute store result score base= rev_conv.num run data get storage arr_math:in var2.base
data modify storage rev_conv:main in set from storage arr_math:in var2.num

#flattening
function rev_conv:call

#writing flattened base value
data modify storage arr_math:main dc.base set value 10
execute store result storage arr_math:main dc.base int 1 run scoreboard players get out= rev_conv.num

#doing conversion
function arr_math:ops/dc_check
execute if data storage arr_math:main out{result:2} run function arr_math:ops/dc_last_num

data modify storage arr_math:main out set from storage arr_math:main dc.out
data modify storage arr_math:main out.pol set from storage arr_math:in var1.pol
data modify storage arr_math:main out.base set from storage arr_math:main dc.base