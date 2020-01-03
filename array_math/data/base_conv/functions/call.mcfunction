#clears previous outputs
data modify storage base_conv:main out set value []

#init
function base_conv:convert/start
execute if score in= base_conv.num matches 1.. run function base_conv:convert