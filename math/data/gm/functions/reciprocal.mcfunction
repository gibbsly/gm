data modify storage gm:io out set value "fail"
$execute summon item_display run return run function gm:zzz/reciprocal_handling {var1:$(x)}

return fail
$tp invalid-input $(x) 0 0