$data modify entity @s transformation set value [0f,0f,0f,$(var1)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(var2)f]
data modify storage gm:io out set from entity @s transformation.translation[0]
kill @s
return run data get storage gm:io out