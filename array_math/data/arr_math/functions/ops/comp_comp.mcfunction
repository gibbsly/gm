#moving val to scoreboard
execute store result score v1= arr_math.main run data get storage arr_math:main v1.num[0]
execute store result score v2= arr_math.main run data get storage arr_math:main v2.num[0]
data remove storage arr_math:main v1.num[0]
data remove storage arr_math:main v2.num[0]

#comparing nums
execute if score v1= arr_math.main > v2= arr_math.main run data modify storage arr_math:main out.result set value 1
execute if score v1= arr_math.main < v2= arr_math.main run data modify storage arr_math:main out.result set value 2

#retrying if values are equal
execute if data storage arr_math:main v1.num[0] if data storage arr_math:main v2.num[0] if score v1= arr_math.main = v2= arr_math.main run function arr_math:ops/comp_comp