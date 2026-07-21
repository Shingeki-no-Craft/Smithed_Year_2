# @s shifter_vars: Main Titan. Correponds to the id. (unique)
# @s $(shifter)_vars: Sub-Titan. Mainly to track if another player got the titan. (unique)
# @s[tag=snc.shifter.$(shifter)]. Shifter's Passives. (multiple)

# Restart moves
execute if entity @s[tag=!snc.titan, tag=!hidden.shifter] run function snc:shifters/transfer/effects
# Reset scoreboard
scoreboard players reset * female_vars
scoreboard players set @s female_vars 1

## Curse
# Energy
scoreboard players set $energy female_vars 3600

# Advancement
# $advancement grant @s[tag=!hidden.shifter] only snc:shifters/female/get

# Init 
#tellraw @s[tag=!hidden.shifter] [{"translate": "snc.dialog.titan.get","color": "yellow"}," ",{"translate": "snc.dialog.titan.get.1","color": "white"},". ",{"translate": "snc.dialog.titan.get.2"},{"text": " [","color": "white"},{"keybind": "key.quickActions","color": "white"},{"text": "] ","color": "white"},{"translate": "snc.dialog.titan.get.3"}]
data modify storage snc:female og_regen_ticks set from storage snc:female regen_ticks
scoreboard players set $regeneration female_vars 1
scoreboard players set $explosion female_vars 0
scoreboard players set $set_hardening female_vars 0
scoreboard players set $master female_vars 0

## Kill previous owner
execute store result score count female_vars if entity @e[type=#snc:eldian,scores={female_vars=1}]
execute if score count female_vars matches 2.. as @n[type=#snc:eldian,scores={female_vars=1},tag=!snc.titan] run function snc:shifters/transfer/cheat with storage snc:female