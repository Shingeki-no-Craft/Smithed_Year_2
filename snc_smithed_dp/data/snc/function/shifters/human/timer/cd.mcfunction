function snc:logic/return_gamemode

## Drop current items before replace
$function snc:shifters/human/inventory/save/shifter with storage minecraft:$(shifter)
function snc:shifters/abilities/clear
$function snc:shifters/human/inventory/spawn/shifter with storage minecraft:$(shifter)

$execute if entity @s[tag=snc.shifter.vanish] run scoreboard players set $vanish $(shifter)_vars 1

$execute if entity @s[tag=snc.shifter.vanish] run scoreboard players remove $energy $(shifter)_vars 360
# Unshift energy
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..3 run scoreboard players remove $energy $(shifter)_vars 800
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..9 run scoreboard players remove $energy $(shifter)_vars 800
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..18 run scoreboard players remove $energy $(shifter)_vars 800
$execute if score $shifter_mastery config matches 1 if score $master $(shifter)_vars matches ..30 run scoreboard players remove $energy $(shifter)_vars 800
#$execute if score $energy $(shifter)_vars matches ..-1 run scoreboard players set $energy $(shifter)_vars 0
execute if entity @s[tag=snc.shifter.vanish] run ride @s dismount

tag @s remove transform
tag @s remove consume
tag @s remove snc.shifter.vanish

effect clear @s
effect give @s absorption 10 4 true
effect give @s resistance 4 127 true
execute if score @s shifter_vars matches 2 run effect give @s slow_falling 9 0 true
execute unless score @s shifter_vars matches 2 run effect give @s slow_falling 3 0 true
effect give @s levitation 1 0 true
$function snc:shifters/human/transform/human {"shifter":"$(shifter)", "id":"$(id)"}