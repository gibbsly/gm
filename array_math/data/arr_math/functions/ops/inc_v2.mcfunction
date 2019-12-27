#getting length of arrays
execute store result score v1length= arr_math.main run data get storage arr_math:main v1.num
execute store result score v2length= arr_math.main run data get storage arr_math:main v2.num

#comparing array length
execute if score v1length= arr_math.main >= v2length= arr_math.main run function arr_math:ops/div_increase_v2