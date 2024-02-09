data modify storage gm:io out set value "fail"
$data modify entity 91bb5-0-0-0-ffff transformation set value [1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(x)f]
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff transformation.scale[0]
return run data get storage gm:io out

return fail
$tp invalid-input $(x) 0 0