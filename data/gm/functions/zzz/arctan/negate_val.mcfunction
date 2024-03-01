#> gm:zzz/arctan/negate_val
#
# Negates var1
#
# ---
# @context any
# @within gm:arctan

$data modify storage gm._temp_:std var1 set value [0f,0f,0f,$(var1)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,-1f]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm._temp_:std var1 set from entity 91bb5-0-0-0-ffff transformation.translation[0]