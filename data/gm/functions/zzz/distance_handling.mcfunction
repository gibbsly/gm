#> gm:zzz/distance_handling
#
# Finds distance value of `(Δx, Δy, Δz)`
#
# ---
# @context any
# @internal

$data modify entity 91bb5-0-0-0-ffff transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff transformation.scale[0]
return run data get storage gm:io out