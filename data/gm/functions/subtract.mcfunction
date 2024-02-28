data modify storage gm:io out set value "fail"
$data modify storage gm:temp var1 set value $(x)
$data modify storage gm:temp var2 set value $(y)
$data modify storage gm:temp tv2p set value $(y)
data modify storage gm:temp tv2p set string storage gm:temp tv2p 0 1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2 set string storage gm:temp var2 1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp v2dt set string storage gm:temp var2 -1
execute if data storage gm:temp {tv2p:"-"} if data storage gm:temp {v2dt:"d"} run data modify storage gm:temp var2 set string storage gm:temp var2 0 -1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp v2p set value ""
execute unless data storage gm:temp {tv2p:"-"} run data modify storage gm:temp v2p set value "-"
return run function gm:zzz/subtract_handling with storage gm:temp

return fail
$tp invalid-input $(x) $(y) 0