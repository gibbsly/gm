data modify storage gm:io out set value "fail"
$execute positioned ~ $(x) ~ run tp 91bb5-0-0-0-ffff 29999999 ~$(y) 91665
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff Pos[1]
tp 91bb5-0-0-0-ffff 29999999 0 91665
return run data get storage gm:io out

return fail
$tp invalid-input $(x) $(y) 0