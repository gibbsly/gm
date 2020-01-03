#setting up values and clearing data
scoreboard players set mult= rev_conv.num 1
scoreboard players set out= rev_conv.num 0
data modify storage rev_conv:main rev set from storage rev_conv:main in

#doing calculation
function rev_conv:conv/calc

execute store result storage rev_conv:main out int 1 run scoreboard players get out= rev_conv.num