#setting decimal point
execute store result score v1dec= arr_math.main run data get storage arr_math:in var1.dec
execute store result score v2dec= arr_math.main run data get storage arr_math:in var2.dec

#removing additional 0's
scoreboard players set temp= arr_math.main 0
scoreboard players operation temp= arr_math.main = v1dec= arr_math.main
scoreboard players operation temp= arr_math.main -= v2dec= arr_math.main
execute unless score temp= arr_math.main matches 0 run function arr_math:ops/mult_remove_zero

execute store result storage arr_math:main out.dec int 1 run scoreboard players operation v1dec= arr_math.main += v2dec= arr_math.main
data modify storage arr_math:main out.base set from storage arr_math:in var1.base

#setting polarity
data modify storage arr_math:main out.pol set value 1
execute if data storage arr_math:in {var1:{pol:-1}} unless data storage arr_math:in {var1:{pol:-1},var2:{pol:-1}} run data modify storage arr_math:main out.pol set value -1
execute if data storage arr_math:in {var2:{pol:-1}} unless data storage arr_math:in {var1:{pol:-1},var2:{pol:-1}} run data modify storage arr_math:main out.pol set value -1