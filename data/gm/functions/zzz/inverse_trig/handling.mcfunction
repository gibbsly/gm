#> gm:zzz/inverse_trig/handling
#
# Uses (var1, var2) to find the angle to (0, 0)
#
# Must be called AS 91bb5-0-0-0-ffff
#
# ---
# @context gm.math_entity
# @internal

$data modify entity @s Pos set value [$(var1)d,0.0d,$(var2)d]
execute at @s run tp @s ~ ~ ~ facing 0.0 0.0 0.0
data modify storage gm:io out set from entity @s Rotation[0]
tp @s 29999999 0 91665
execute if data storage gm:io {out:-180f} run data merge storage gm:io {out:180.0f}
return run data get storage gm:io out