#removing 0
data remove storage arr_math:main out.num[0]
data modify storage arr_math:main temp set from storage arr_math:main out.num[0]

#loop condition
execute if data storage arr_math:main out.num[1] if data storage arr_math:main {temp:0} run function arr_math:ops/sub_remove_zero