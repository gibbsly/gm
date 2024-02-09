data modify storage gm:io out set value "fail"
$data modify storage gm:temp var1 set value $(x)
$data modify storage gm:temp tv2p set value $(x)
data modify storage gm:temp tv2p set string storage gm:temp tv2p 0 1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var1 set string storage gm:temp var1 1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp v2p set value ""
execute unless data storage gm:temp {tv2p:"-"} run data modify storage gm:temp v2p set value "-"
return run function gm:zzz/negate_handling with storage gm:temp

return fail
$tp invalid-input $(x) 0 0