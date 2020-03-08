#writing data
data modify storage arr_math:main dc.out.num prepend value 0

#setting up for flattening
execute store result score base= rev_conv.num run data get storage arr_math:in var2.base
data modify storage rev_conv:main in set from storage arr_math:main v1.num

#flattening
function rev_conv:call

#writing flattened value
execute store result storage arr_math:main dc.out.num[0] int 1 run scoreboard players get out= rev_conv.num