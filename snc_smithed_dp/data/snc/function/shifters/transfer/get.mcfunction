# @s shifter_vars: Main Titan. Correponds to the id. (unique)
# @s $(shifter)_vars: Sub-Titan. Mainly to track if another player got the titan. (unique)
# @s[tag=snc.shifter.$(shifter)]. Shifter's Passives. (multiple)

$scoreboard players set $$(shifter).doesnt.exists shifter_vars 0
# Restart moves
execute if entity @s[tag=!transform, tag=!hidden.shifter] run function snc:shifters/transfer/effects

## Get ID from "inherit"
execute if score @s shifter_vars matches ..-1 run scoreboard players operation @s shifter_vars *= #-1 constant
# ID from first shifter it gets
$execute unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars $(id)
# Reset scoreboard
$scoreboard players reset * $(shifter)_vars
$scoreboard players set @s $(shifter)_vars 1
$function snc:shifters/transfer/tags/add {"shifter" : $(shifter)}

## Curse
# If its the first shifter
$execute if score curse config matches 0 run scoreboard players set curse $(shifter)_vars 72
$execute if score curse config matches 1 run scoreboard players set curse $(shifter)_vars 312
$execute if score curse config matches 2 run scoreboard players set curse $(shifter)_vars 1560
# Set previous curse
$function snc:shifters/mobs/curse {"shifter" : $(shifter)}
# Energy
$scoreboard players set $energy $(shifter)_vars 3600

# Advancement
$advancement grant @s[tag=!hidden.shifter] only snc:shifters/$(shifter)/get
advancement grant @s[tag=!hidden.shifter] only snc:shifters/aura

# Init 
tellraw @s[tag=!hidden.shifter] [{"translate": "snc.dialog.titan.get","color": "yellow"}," ",{"translate": "snc.dialog.titan.get.1","color": "white"},". ",{"translate": "snc.dialog.titan.get.2"},{"text": " [","color": "white"},{"keybind": "key.quickActions","color": "white"},{"text": "] ","color": "white"},{"translate": "snc.dialog.titan.get.3"}]
$data modify storage minecraft:$(shifter) og_regen_ticks set from storage minecraft:$(shifter) regen_ticks
$scoreboard players set $regeneration $(shifter)_vars 1
$scoreboard players set $explosion $(shifter)_vars 0
$scoreboard players set $set_hardening $(shifter)_vars 0
$scoreboard players set $master $(shifter)_vars 0

execute if entity @s[tag=snc.shifter.armor] run function snc:shifters/function/unique {"pre":"scoreboard players set $set_hardening ","post":"_vars 1"}

## Kill previous owner
$execute store result score count $(shifter)_vars run execute if entity @e[type=#snc:eldian,scores={$(shifter)_vars=1}]
$execute if score count $(shifter)_vars matches 2.. run execute as @n[type=#snc:eldian,scores={$(shifter)_vars=1},tag=!transform] run function snc:shifters/transfer/cheat with storage minecraft:$(shifter)