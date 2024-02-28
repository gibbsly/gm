$execute positioned ~ $(var1) ~ run tp 91bb5-0-0-0-ffff 29999999 ~$(var2) 91665
data modify storage gm:temp var3[3] set from entity 91bb5-0-0-0-ffff Pos[1]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm:temp var3
data modify storage gm:temp var1 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify storage gm:temp var4[-1] set from storage gm:temp var1
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm:temp var4
data modify storage gm:temp var2 set from entity 91bb5-0-0-0-ffff transformation.translation[0]

function gm:zzz/sqrt_handling/positive_subtract with storage gm:temp
execute unless data storage gm:temp {v1m2p:"-"} run return run function gm:zzz/sqrt_handling with storage gm:temp

tp 91bb5-0-0-0-ffff 29999999 0 91665
data modify storage gm:io out set from storage gm:temp var1
return run data get storage gm:io out