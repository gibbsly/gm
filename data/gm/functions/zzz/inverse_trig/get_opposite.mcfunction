data modify storage gm:temp var1[-1] set from entity 91bb5-0-0-0-ffff transformation.translation[0]
data modify entity 91bb5-0-0-0-ffff transformation set from storage gm:temp var1
data modify storage gm:temp var1 set from entity 91bb5-0-0-0-ffff transformation.translation[0]
function gm:zzz/inverse_trig/range_check with storage gm:temp
execute if data storage gm:temp {v1sqp:"-"} run return fail
function gm:sqrt with storage gm:temp
return 1