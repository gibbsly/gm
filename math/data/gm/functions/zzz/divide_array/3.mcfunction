$data modify entity @s transformation set value [0f,0f,0f,$(1)f,0f,0f,0f,$(2)f,0f,0f,0f,$(3)f,0f,0f,0f,$(divisor)f]
data modify storage gm:io out append from entity @s transformation.translation[]
kill @s
return run data get storage gm:io out