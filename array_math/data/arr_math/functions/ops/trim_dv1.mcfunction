data remove storage arr_math:main div.v1.num[0]
data modify storage arr_math:main temp set from storage arr_math:main div.v1.num[0]
execute if data storage arr_math:main {temp:0} if data storage arr_math:main div.v1.num[0] run function arr_math:ops/trim_dv1