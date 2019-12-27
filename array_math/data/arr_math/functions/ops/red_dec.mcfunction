#lowering decimal point val if needed
execute store result score temp= arr_math.main run data get storage arr_math:main out.dec
data modify storage arr_math:main temp set from storage arr_math:main out.num[-1]
execute if score temp= arr_math.main matches 1.. if data storage arr_math:main {temp:0} run function arr_math:ops/mult_red_dec
execute store result storage arr_math:main out.dec int 1 run scoreboard players get temp= arr_math.main