#setting up for flattening
execute store result score base= rev_conv.num run data get storage arr_math:in var1.base
data modify storage rev_conv:main in set from storage arr_math:in var1.num

#flattening
function rev_conv:call

#output
execute if data storage arr_math:in {var1:{pol:1}} run scoreboard players set out= arr_math.main 1
execute if data storage arr_math:in {var1:{pol:-1}} run scoreboard players set out= arr_math.main -1
scoreboard players operation out= arr_math.main *= out= rev_conv.num
execute if score out= rev_conv.num matches ..-1 run scoreboard players set error= arr_math.main 1 