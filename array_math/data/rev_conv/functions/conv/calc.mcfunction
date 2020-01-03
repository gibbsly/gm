#getting current value
execute store result score current= rev_conv.num run data get storage rev_conv:main rev[-1]
data remove storage rev_conv:main rev[-1]

#math
scoreboard players operation current= rev_conv.num *= mult= rev_conv.num
scoreboard players operation out= rev_conv.num += current= rev_conv.num

#prepping for next and looping
execute if data storage rev_conv:main rev[0] run scoreboard players operation mult= rev_conv.num *= base= rev_conv.num
execute if score out= rev_conv.num matches 0.. if data storage rev_conv:main rev[0] run function rev_conv:conv/calc