data modify storage gm:io out set value "fail"
$execute summon item_display run return run function gm:zzz/multiply_handling {var1:$(x),var2:$(y)}

return fail
$tp invalid-input $(x) $(y) 0