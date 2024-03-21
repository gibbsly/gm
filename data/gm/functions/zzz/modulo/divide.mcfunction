#> gm:zzz/modulo/divide
#
# Divides var2 by var3
#
# ---
# @context any
# @within gm:modulo

$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,$(var2)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(var3)f]
data modify storage gm._temp_:std var2 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify storage gm._temp_:std tv2p set string storage gm._temp_:std var2 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2 set string storage gm._temp_:std var2 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value ""
execute unless data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value "-"
data modify storage gm._temp_:std var2 set string storage gm._temp_:std var2 0 -1
