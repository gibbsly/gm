data modify storage gm:io out set value "fail"
$execute summon item_display run function gm:zzz/square_handling {var1:$(x)}
execute if data storage gm:io {out:"fail"} run return fail
return run data get storage gm:io out

$tp invalid-input $(x) 0 0