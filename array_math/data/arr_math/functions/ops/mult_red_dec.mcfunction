scoreboard players remove temp= arr_math.main 1
data remove storage arr_math:main out.num[-1]

#loop
data modify storage arr_math:main temp set from storage arr_math:main out.num[-1]
execute if score temp= arr_math.main matches 1.. if data storage arr_math:main {temp:0} run function mult_red_dec
