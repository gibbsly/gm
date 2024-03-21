#> gm:zzz/subtract_handling
#
# Handler for subtraction. Accepts a polarity macro.
#
# ---
# @context any
# @internal

$execute positioned ~ $(var1) ~ run tp 91bb5-0-0-0-ffff 29999999 ~$(v2p)$(var2) 91665
data modify storage gm:io out set from entity 91bb5-0-0-0-ffff Pos[1]
tp 91bb5-0-0-0-ffff 29999999 0 91665
return run data get storage gm:io out