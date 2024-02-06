data modify storage gm:io out set value "fail"
$data modify storage gm:temp var1 set value $(x)d
data modify storage gm:temp var2 set value "fail"
$execute summon item_display run function gm:zzz/multiply_handling {var2:$(y)}
execute summon item_display run function gm:zzz/divide_handling with storage gm:temp
execute if data storage gm:io {out:"fail"} run return fail
return run data get storage gm:io out

$tp invalid-input $(x) $(y) 0