data modify storage gm:io out set value "fail"
data merge storage gm:check {type:0,string:["a"],number:[1d],array:[[]],object:[{}]}
$execute store result storage gm:check type int 1 run function gm:zzz/get_data_type {value:$(x)}
$execute if data storage gm:check {type:1} summon item_display run return run function gm:zzz/divide_handling {var1:$(x),var2:$(y)}
$execute if data storage gm:check {type:2} summon item_display run return run function gm:zzz/divide_array {array:$(x),divisor:$(y)}

return fail
$tp invalid-input 0 $(y) 0