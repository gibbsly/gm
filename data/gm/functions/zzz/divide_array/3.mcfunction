#> gm:zzz/divide_array/3
#
# ---
# @context any
# @within gm:zzz/divide_array

$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,$(1)f,0f,0f,0f,$(2)f,0f,0f,0f,$(3)f,0f,0f,0f,$(divisor)f]
data modify storage gm:io out append from entity 91bb5-0-0-0-ffff transformation.translation[]
return run data get storage gm:io out