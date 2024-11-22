#> gm:zzz/load
#
# ## The load function for GM
#
# ---
# @context root
# @internal
# @handles #minecraft:load
#define storage gm:io IO storage
#define storage gm._temp_:std Standard transient storage
#define storage gm._temp_:divide Division specific transient storage
#define storage gm._temp_:check Type checking specific transient storage
#define objective gm.std
#define entity 91bb5-0-0-0-ffff

scoreboard objectives remove gm.std
scoreboard objectives add gm.std dummy

forceload add 29999999 91665
execute unless entity 91bb5-0-0-0-ffff run summon item_display 29999999 0 91665 {UUID:[I;596917,0,0,65535],CustomName:'"gm.math_entity"'}