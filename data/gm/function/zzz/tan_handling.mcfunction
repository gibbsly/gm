#> gm:zzz/tan_handling
#
# Gets tan(θ)
#
# Must be called AS 91bb5-0-0-0-ffff
#
# ---
# @context gm.math_entity
# @within gm:tan

tp @s ~ ~ ~
data modify storage gm._temp_:std var1 set from entity @s Pos[0]
tp @s ^ ^ ^2
data modify storage gm._temp_:std var2 set from entity @s Pos[2]
tp @s 29999999 0 91665
function gm:zzz/divide_handling with storage gm._temp_:std
return run data get storage gm:io out