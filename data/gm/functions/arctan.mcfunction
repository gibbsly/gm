data modify storage gm:io out set value "fail"
$data merge storage gm:temp {var1:[0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],var7:[0d,0d,0d,1d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,0d]}
data modify storage gm:temp pol set string storage gm:temp var1[3] 0 1
$data modify entity 91bb5-0-0-0-ffff transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(x)f]
data modify storage gm:temp var1[-1] set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm:temp var1
data modify storage gm:temp var5 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:zzz/arctan/add_one with storage gm:temp
data modify storage gm:temp var7[-1] set from storage gm:temp var6
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm:temp var7
data modify storage gm:temp x set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:sqrt with storage gm:temp
data modify storage gm:temp var6 set from storage gm:io out
data modify storage gm:temp var7[3] set from storage gm:temp var5
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm:temp var7
data modify storage gm:temp x set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:sqrt with storage gm:temp
data modify storage gm:temp var2 set from storage gm:temp var6
function gm:zzz/inverse_trig/negate_val with storage gm:temp
data modify storage gm:temp var1 set from storage gm:io out
execute if data storage gm:temp {pol:"-"} run function gm:zzz/arctan/negate_val with storage gm:temp
execute as 91bb5-0-0-0-ffff run return run function gm:zzz/inverse_trig/handling with storage gm:temp

return fail
$tp invalid-input $(x) 0 0