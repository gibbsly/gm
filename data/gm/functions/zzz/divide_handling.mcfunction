#> gm:zzz/divide_handling
#
# Handles the division of var1 by var2
#
# ---
# @context any
# @internal


$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,$(var1)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(var2)f]
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff transformation.translation[0]
return run data get storage gm:io out