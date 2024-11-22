#> gm:zzz/sqrt_handling
#
# Main sqrt loop
# 1. var1 += var2
# 2. var1 /= 2
# 3. var2 = init / var1
# 4. If accuracy threshold not met, loop again
#
# ---
# @context any
# @within gm:sqrt

$execute positioned ~ $(var1) ~ run tp 91bb5-0-0-0-ffff 29999999 ~$(var2) 91665
data modify storage gm._temp_:std var3[3] set from entity 91bb5-0-0-0-ffff Pos[1]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var3
data modify storage gm._temp_:std var1 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify storage gm._temp_:std var4[-1] set from storage gm._temp_:std var1
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var4
data modify storage gm._temp_:std var2 set from entity 91bb5-0-0-0-ffff transformation.translation[0]

scoreboard players add __sqrt_loop gm.std 1

function gm:zzz/sqrt/positive_subtract with storage gm._temp_:std
execute unless score __sqrt_loop gm.std matches 20.. unless data storage gm._temp_:std {v1m2p:"-"} run return run function gm:zzz/sqrt_handling with storage gm._temp_:std

tp 91bb5-0-0-0-ffff 29999999 0 91665
data modify storage gm:io out set from storage gm._temp_:std var1
return run data get storage gm:io out