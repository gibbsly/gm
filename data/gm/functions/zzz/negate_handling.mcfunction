#> gm:zzz/negate_handling
#
# Negates using polarity variable
#
# ---
# @context any
# @within gm:negate

$data modify storage gm:io out set value $(v2p)$(var1)
return run data get storage gm:io out