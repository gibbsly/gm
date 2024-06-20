#> gm:zzz/get_data_type
#
# Gets the datatype of value
#
# ---
# @context any
# @internal

$data modify storage gm._temp_:check string append value $(value)
$function gm:zzz/get_data_type/number_check {value:$(value)}
$data modify storage gm._temp_:check array append value $(value)
$data modify storage gm._temp_:check object append value $(value)

execute if data storage gm._temp_:check number[1] run return 1
execute if data storage gm._temp_:check array[1] run return 2
execute if data storage gm._temp_:check object[1] run return 3
execute if data storage gm._temp_:check string[1] run return 4
return fail