data modify storage gm:io out set value "fail"
$execute positioned ~ $(x) ~ positioned ~ ~$(y) ~ summon marker run return run function gm:zzz/add_handling

return fail
$tp invalid-input $(x) $(y) 0