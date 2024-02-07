$data modify storage gm:check string append value $(value)
$function gm:zzz/get_data_type/number_check {value:$(value)}
$data modify storage gm:check array append value $(value)
$data modify storage gm:check object append value $(value)

execute if data storage gm:check number[1] run return 1
execute if data storage gm:check array[1] run return 2
execute if data storage gm:check object[1] run return 3
execute if data storage gm:check string[1] run return 4
return fail