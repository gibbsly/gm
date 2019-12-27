data remove storage arr_math:main out.num[-1]
execute if score temp= arr_math.main matches 1.. run scoreboard players remove temp= arr_math.main 1
execute if score temp= arr_math.main matches ..-1 run scoreboard players add temp= arr_math.main 1

#loop
execute unless score temp= arr_math.main matches 0 run function arr_math:ops/mult_remove_zero