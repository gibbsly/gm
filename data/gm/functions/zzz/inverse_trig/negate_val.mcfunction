#> gm:zzz/inverse_trig/negate_val
#
# Negates var2
#
# ---
# @context any
# @internal

$data modify storage gm._temp_:std var1 set value [0f,0f,0f,$(var2)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,-1f]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm._temp_:std var1
data modify storage gm._temp_:std var2 set from entity 91bb5-0-0-0-ffff transformation.translation[0]