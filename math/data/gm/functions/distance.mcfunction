data modify storage gm:io out set value "fail"
data modify storage gm:temp dist set value {}

#setup
data modify storage gm:temp var1 set value {}
$data modify storage gm:temp ar1 set value $(x)
$data modify storage gm:temp ar2 set value $(y)

#x
data modify storage gm:temp var2 set value {x:0,y:0}
data modify storage gm:temp var2.x set from storage gm:temp ar1[0]
data modify storage gm:temp var2.y set from storage gm:temp ar2[0]
function gm:subtract with storage gm:temp var2
data modify storage gm:temp tv2p set string storage gm:io out 0 1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2 set value {x:0,y:0}
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2.y set from storage gm:temp ar1[0]
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2.x set from storage gm:temp ar2[0]
execute if data storage gm:temp {tv2p:"-"} run function gm:subtract with storage gm:temp var2
data modify storage gm:temp dist.x set from storage gm:io out

#y
data modify storage gm:temp var2 set value {x:0,y:0}
data modify storage gm:temp var2.x set from storage gm:temp ar1[1]
data modify storage gm:temp var2.y set from storage gm:temp ar2[1]
function gm:subtract with storage gm:temp var2
data modify storage gm:temp tv2p set string storage gm:io out 0 1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2 set value {x:0,y:0}
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2.y set from storage gm:temp ar1[1]
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2.x set from storage gm:temp ar2[1]
execute if data storage gm:temp {tv2p:"-"} run function gm:subtract with storage gm:temp var2
data modify storage gm:temp dist.y set from storage gm:io out

#z
data modify storage gm:temp var2 set value {x:0,y:0}
data modify storage gm:temp var2.x set from storage gm:temp ar1[2]
data modify storage gm:temp var2.y set from storage gm:temp ar2[2]
function gm:subtract with storage gm:temp var2
data modify storage gm:temp tv2p set string storage gm:io out 0 1
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2 set value {x:0,y:0}
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2.y set from storage gm:temp ar1[2]
execute if data storage gm:temp {tv2p:"-"} run data modify storage gm:temp var2.x set from storage gm:temp ar2[2]
execute if data storage gm:temp {tv2p:"-"} run function gm:subtract with storage gm:temp var2
data modify storage gm:temp dist.z set from storage gm:io out

execute summon item_display run function gm:zzz/distance_handling with storage gm:temp dist

execute if data storage gm:io {out:"fail"} run return fail
return run data get storage gm:io out

$data modify storage invalid input set value [[],$(x),$(y)]