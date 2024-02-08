$data modify entity @s transformation set value [1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(var1)f]
data modify storage gm:io out set from entity @s transformation.scale[0]
kill @s
return run data get storage gm:io out