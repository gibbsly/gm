#> gm:negate
#
# ## Gets the negative of a value
#
# Equivalent to `-x`
#
# ---
# @context any
# @api
# @macro
#   x: float | double
#      The value to negate
# @output
#   storage gm:io
#      out: int | double | "fail"

data modify storage gm:io out set value "fail"
$data modify storage gm._temp_:std var1 set value $(x)
data modify storage gm._temp_:std tv2p set string storage gm._temp_:std var1 0 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std var1 set string storage gm._temp_:std var1 1
execute if data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value ""
execute unless data storage gm._temp_:std {tv2p:"-"} run data modify storage gm._temp_:std v2p set value "-"
return run function gm:zzz/negate_handling with storage gm._temp_:std

return fail
$tp invalid-input $(x) 0 0