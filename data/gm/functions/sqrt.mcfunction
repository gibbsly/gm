data modify storage gm:io out set value "fail"
$data merge storage gm:temp {var1:$(x), var2:1, var3:[0d,0d,0d,0d,0d,1d,0d,0d,0d,0d,1d,0d,0d,0d,0d,2d], var4:[0f,0f,0f,$(x)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,0f]}
$return run function gm:zzz/sqrt_handling {var1:$(x), var2:1}

return fail
$tp invalid-input -$(x) 0 0