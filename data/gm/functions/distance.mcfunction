#> gm:distance
#
# ## Gets the distance between two values
#
# Gets the distance between the arrays `x` and `y`
#
# Position arrays can be up to 3 elements long
#
# If a element is missing from an array, it's assumed to be 0 instead
#
# ---
# @context any
# @api
# @macro
#   x: (float | double)[]
#      One of the position arrays
#   y: (float | double)[]
#      One of the position arrays
# @output
#   storage gm:io
#      out: float[] | "fail"

data modify storage gm:io out set value "fail"
data modify storage gm._temp_:std dist set value {}

#setup
data modify storage gm._temp_:std var1 set value {}
$data modify storage gm._temp_:std ar1 set value $(x)
$data modify storage gm._temp_:std ar2 set value $(y)

#x
data modify storage gm._temp_:std var2 set value {x:0,y:0}
data modify storage gm._temp_:std var2.x set from storage gm._temp_:std ar1[0]
data modify storage gm._temp_:std var2.y set from storage gm._temp_:std ar2[0]
function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std tv2p set string storage gm:io out 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2 set value {x:0,y:0}
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2.y set from storage gm._temp_:std ar1[0]
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2.x set from storage gm._temp_:std ar2[0]
execute if data storage gm._temp_:std {tv2p:"-"} run function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std dist.x set from storage gm:io out

#y
data modify storage gm._temp_:std var2 set value {x:0,y:0}
data modify storage gm._temp_:std var2.x set from storage gm._temp_:std ar1[1]
data modify storage gm._temp_:std var2.y set from storage gm._temp_:std ar2[1]
function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std tv2p set string storage gm:io out 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2 set value {x:0,y:0}
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2.y set from storage gm._temp_:std ar1[1]
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2.x set from storage gm._temp_:std ar2[1]
execute if data storage gm._temp_:std {tv2p:"-"} run function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std dist.y set from storage gm:io out

#z
data modify storage gm._temp_:std var2 set value {x:0,y:0}
data modify storage gm._temp_:std var2.x set from storage gm._temp_:std ar1[2]
data modify storage gm._temp_:std var2.y set from storage gm._temp_:std ar2[2]
function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std tv2p set string storage gm:io out 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2 set value {x:0,y:0}
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2.y set from storage gm._temp_:std ar1[2]
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var2.x set from storage gm._temp_:std ar2[2]
execute if data storage gm._temp_:std {tv2p:"-"} run function gm:subtract with storage gm._temp_:std var2
data modify storage gm._temp_:std dist.z set from storage gm:io out

execute unless data storage gm._temp_:std dist{x:"fail"} unless data storage gm._temp_:std dist{y:"fail"} unless data storage gm._temp_:std dist{z:"fail"} run return run function gm:zzz/distance_handling with storage gm._temp_:std dist

return fail
$data modify storage invalid input set value [[],$(x),$(y)]