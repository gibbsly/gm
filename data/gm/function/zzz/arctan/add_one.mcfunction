#> gm:zzz/arctan/add_one
#
# Used during arctan to add 1 to tan²(θ). Also converts var5 from a float to a double
#
# ---
# @context any
# @within gm:arctan

$execute positioned ~ 1 ~ run tp 91bb5-0-0-0-ffff ~ ~$(var5) ~
data modify storage gm._temp_:std var6 set from entity 91bb5-0-0-0-ffff Pos[1]
$data modify storage gm._temp_:std var5 set value $(var5)d