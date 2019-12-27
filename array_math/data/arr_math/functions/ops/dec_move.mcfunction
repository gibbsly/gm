#decimal values to scoreboard
execute store result score v1dec= arr_math.main run data get storage arr_math:main v1.dec
execute store result score v2dec= arr_math.main run data get storage arr_math:main v2.dec

#moving decimal if needed
execute if score v1dec= arr_math.main > v2dec= arr_math.main run function arr_math:ops/shift_dec_v1
execute if score v1dec= arr_math.main < v2dec= arr_math.main run function arr_math:ops/shift_dec_v2

#writing greatest decimal val to output
execute if score v1dec= arr_math.main >= v2dec= arr_math.main run data modify storage arr_math:main out.dec set from storage arr_math:main v1.dec
execute if score v1dec= arr_math.main < v2dec= arr_math.main run data modify storage arr_math:main out.dec set from storage arr_math:main v2.dec