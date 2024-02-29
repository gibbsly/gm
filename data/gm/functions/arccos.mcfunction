data modify storage gm:io out set value "fail"
$data modify storage gm:temp var1 set value [0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(x)f]
execute unless function gm:zzz/inverse_trig/get_opposite run return fail
$data modify storage gm:temp var2 set value $(x)f
function gm:zzz/inverse_trig/negate_val with storage gm:temp
data modify storage gm:temp var1 set from storage gm:io out
execute as 91bb5-0-0-0-ffff run return run function gm:zzz/inverse_trig/handling with storage gm:temp

return fail
$tp invalid-input $(x) 0 0