$data modify entity @s transformation set value [$(1)f,0f,0f,$(4)f,0f,$(2)f,0f,$(5)f,0f,0f,$(3)f,$(6)f,0f,0f,0f,$(divisor)f]
data modify storage gm:io out append from entity @s transformation.scale[]
data modify storage gm:io out append from entity @s transformation.translation[]
kill @s