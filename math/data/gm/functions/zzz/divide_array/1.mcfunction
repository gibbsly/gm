$data modify entity @s transformation set value [0f,0f,0f,$(1)f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,$(divisor)f]
data modify storage gm:io out append from entity @s transformation.translation[]
data remove storage gm:io out[-1]
data remove storage gm:io out[-1]
kill @s
return run data get storage gm:io out