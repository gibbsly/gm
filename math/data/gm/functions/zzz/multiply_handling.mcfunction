$data modify entity @s transformation set value [1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(var2)f]
data modify storage gm:temp var2 set from entity @s transformation.scale[0]
function gm:zzz/divide_handling with storage gm:temp
kill @s