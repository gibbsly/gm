#> gm:zzz/get_distance
#
# ## This function is unused
#
# ---
# @context none
# @private

data modify storage gm._temp_:std dist set value {}

#setup
$data modify storage gm._temp_:std v2p set value $(x)
data modify storage gm._temp_:std var1 set value {}
data modify storage gm._temp_:std var1.x1 set from storage gm._temp_:std v2p[0]
data modify storage gm._temp_:std var1.y1 set from storage gm._temp_:std v2p[1]
data modify storage gm._temp_:std var1.z1 set from storage gm._temp_:std v2p[2]
$data modify storage gm._temp_:std v2p set value $(x)
data modify storage gm._temp_:std var1.x2 set from storage gm._temp_:std v2p[0]
data modify storage gm._temp_:std var1.y2 set from storage gm._temp_:std v2p[1]
data modify storage gm._temp_:std var1.z2 set from storage gm._temp_:std v2p[2]

#x
data modify storage gm._temp_:std var2 set value {x:0,y:0}
data modify storage gm._temp_:std var2.x set from storage gm._temp_:std var1.x1
data modify storage gm._temp_:std var2.y set from storage gm._temp_:std var1.x2
function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std tv2p set string storage gm:io out 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run function gm:zzz/inverted_subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std dist.x set from storage gm:io out

#y
data modify storage gm._temp_:std var2 set value {x:0,y:0}
data modify storage gm._temp_:std var2.x set from storage gm._temp_:std var1.y1
data modify storage gm._temp_:std var2.y set from storage gm._temp_:std var1.y2
function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std tv2p set string storage gm:io out 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run function gm:zzz/inverted_subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std dist.y set from storage gm:io out

#z
data modify storage gm._temp_:std var2 set value {x:0,y:0}
data modify storage gm._temp_:std var2.x set from storage gm._temp_:std var1.z1
data modify storage gm._temp_:std var2.y set from storage gm._temp_:std var1.z2
function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std tv2p set string storage gm:io out 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run function gm:zzz/inverted_subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std dist.z set from storage gm:io out

function gm:zzz/distance_handling with storage gm._temp_:std dist