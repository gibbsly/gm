#setting base val to input base value
scoreboard players operation base= arr_math.main = v1base= arr_math.main
scoreboard players reset v1base= arr_math.main
scoreboard players reset v2base= arr_math.main
execute store result storage arr_math:main out.base int 1 run scoreboard players get base= arr_math.main

#doing subtraction if one val is negative
execute if data storage arr_math:main {v1:{pol:-1},v2:{pol:1}} run function arr_math:ops/sub_from_add
execute if data storage arr_math:main {v1:{pol:1},v2:{pol:-1}} run function arr_math:ops/sub_from_add

#doing addition if both values are positive or negative
execute if data storage arr_math:main {v1:{pol:1},v2:{pol:1}} run function arr_math:ops/do_add
execute if data storage arr_math:main {v1:{pol:-1},v2:{pol:-1}} run function arr_math:ops/do_add

function arr_math:ops/red_dec