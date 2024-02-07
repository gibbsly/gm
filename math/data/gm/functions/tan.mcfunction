data modify storage gm:io out set value "fail"
$execute rotated $(x) 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 summon item_display run function gm:zzz/tan_handling
execute if data storage gm:io {out:"fail"} run return fail
return run data get storage gm:io out

$tp invalid-input $(x) 0 0