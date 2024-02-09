tp @s ~ ~ ~
data modify storage gm:temp var1 set from entity @s Pos[0]
tp @s ^ ^ ^2
data modify storage gm:temp var2 set from entity @s Pos[2]
tp @s 29999999 0 91665
function gm:zzz/divide_handling with storage gm:temp
return run data get storage gm:io out