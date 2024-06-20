#> gm:zzz/cos_handling
#
# Gets cos(θ)
#
# Must be called AS 91bb5-0-0-0-ffff
#
# ---
# @context gm.math_entity
# @within gm:cos

tp @s ~ ~ ~
data modify storage gm:io out set from entity @s Pos[2]
tp @s 29999999 0 91665
return run data get storage gm:io out