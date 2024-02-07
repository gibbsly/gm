data modify storage gm:temp dist set value {}

#setup
$data modify storage gm:temp v2p set value $(x)
data modify storage gm:temp var1 set value {}
data modify storage gm:temp var1.x1 set from storage gm:temp v2p[0]
data modify storage gm:temp var1.y1 set from storage gm:temp v2p[1]
data modify storage gm:temp var1.z1 set from storage gm:temp v2p[2]
$data modify storage gm:temp v2p set value $(x)
data modify storage gm:temp var1.x2 set from storage gm:temp v2p[0]
data modify storage gm:temp var1.y2 set from storage gm:temp v2p[1]
data modify storage gm:temp var1.z2 set from storage gm:temp v2p[2]

#x
data modify storage gm:temp var2 set value {x:0,y:0}
data modify storage gm:temp var2.x set from storage gm:temp var1.x1
data modify storage gm:temp var2.y set from storage gm:temp var1.x2
function gm:subtract with storage gm:temp var2
data modify storage gm:temp tv2p set string storage gm:io out 0 1
execute if data storage gm:temp {tv2p:"-"} run function gm:zzz/inverted_subtract with storage gm:temp var2
data modify storage gm:temp dist.x set from storage gm:io out

#y
data modify storage gm:temp var2 set value {x:0,y:0}
data modify storage gm:temp var2.x set from storage gm:temp var1.y1
data modify storage gm:temp var2.y set from storage gm:temp var1.y2
function gm:subtract with storage gm:temp var2
data modify storage gm:temp tv2p set string storage gm:io out 0 1
execute if data storage gm:temp {tv2p:"-"} run function gm:zzz/inverted_subtract with storage gm:temp var2
data modify storage gm:temp dist.y set from storage gm:io out

#z
data modify storage gm:temp var2 set value {x:0,y:0}
data modify storage gm:temp var2.x set from storage gm:temp var1.z1
data modify storage gm:temp var2.y set from storage gm:temp var1.z2
function gm:subtract with storage gm:temp var2
data modify storage gm:temp tv2p set string storage gm:io out 0 1
execute if data storage gm:temp {tv2p:"-"} run function gm:zzz/inverted_subtract with storage gm:temp var2
data modify storage gm:temp dist.z set from storage gm:io out

function gm:zzz/distance_handling with storage gm:temp dist