data modify storage gm:io out set value "fail"
$data modify storage gm:temp var2 set value $(x)f
function gm:zzz/inverse_trig/negate_val with storage gm:temp
$data modify storage gm:temp var1 set value $(y)f
execute if data storage gm:temp {var1:0f, var2:0f} run return fail
execute as 91bb5-0-0-0-ffff run return run function gm:zzz/inverse_trig/handling with storage gm:temp

return fail
$tp invalid-input $(x) $(y) 0