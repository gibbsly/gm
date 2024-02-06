$data modify entity @s transformation set value [$(var1)f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(var2)f]
data modify storage gm:io out set from entity @s transformation.scale[0]
kill @s