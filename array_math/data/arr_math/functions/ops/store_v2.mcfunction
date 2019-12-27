execute store result score v2= arr_math.main run data get storage arr_math:main v2.num[-1]
data remove storage arr_math:main v2.num[-1]
execute unless data storage arr_math:main v2.num[0] run data modify storage arr_math:main v2.num append value "end"