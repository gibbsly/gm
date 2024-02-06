data modify storage gm:io out set value "fail"
$execute positioned ~ $(x) ~ positioned ~ ~$(y) ~ summon marker run function gm:zzz/add_handling
execute if data storage gm:io {out:"fail"} run return fail
return run data get storage gm:io out

$tp invalid-input $(x) $(y) 0