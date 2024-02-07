data modify storage gm:temp var1 set from entity @s Pos[0]
tp @s ^ ^ ^2
data modify storage gm:temp var2 set from entity @s Pos[2]
function gm:zzz/divide_handling with storage gm:temp
kill @s