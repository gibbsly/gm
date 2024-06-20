#> gm:zzz/divide_array
#
# Handles the division of array by divisor
#
# ---
# @context any
# @internal

$data modify storage gm._temp_:divide array set value $(array)

data modify storage gm._temp_:divide 1 set from storage gm._temp_:divide array[0]
data modify storage gm._temp_:divide 2 set from storage gm._temp_:divide array[1]
data modify storage gm._temp_:divide 3 set from storage gm._temp_:divide array[2]
$data modify storage gm._temp_:divide divisor set value $(divisor)
data modify storage gm:io out set value []

execute if data storage gm._temp_:divide array[2] run return run function gm:zzz/divide_array/3 with storage gm._temp_:divide
execute if data storage gm._temp_:divide array[1] run return run function gm:zzz/divide_array/2 with storage gm._temp_:divide
execute if data storage gm._temp_:divide array[0] run return run function gm:zzz/divide_array/1 with storage gm._temp_:divide