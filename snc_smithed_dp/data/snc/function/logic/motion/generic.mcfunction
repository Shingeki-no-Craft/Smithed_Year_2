$execute if entity @s[tag=snc.unstoppable] unless predicate snc:$(unstoppable) run return -1
$execute if predicate snc:$(unstoppable) run tag @s add snc.unstoppable

$execute store result score #snc.mot_x0 $(score) run data get entity @s Pos[0] 1000
$execute store result score #snc.mot_y0 $(score) run data get entity @s Pos[1] 1000
$execute store result score #snc.mot_z0 $(score) run data get entity @s Pos[2] 1000

$execute positioned ^ ^ ^.1 summon snowball run function snc:logic/motion/macro {"score":$(score)}

$scoreboard players operation #motion_x $(score) -= #snc.mot_x0 $(score)
$scoreboard players operation #motion_y $(score) -= #snc.mot_y0 $(score)
$scoreboard players operation #motion_z $(score) -= #snc.mot_z0 $(score)

data merge entity @s {equipment:{saddle:{id:"minecraft:apple",components:{"minecraft:item_model":"minecraft:shifters/item/saddle","minecraft:tooltip_display":{"hide_tooltip":true},"minecraft:custom_data":{"atk_shifter":1b}}}}}
#data merge entity @s {NoAI:0b}

$execute store result entity @s Motion[0] double $(strength) run scoreboard players get #motion_x $(score)
$execute store result entity @s Motion[1] double $(strength) run scoreboard players get #motion_y $(score)
$execute store result entity @s Motion[2] double $(strength) run scoreboard players get #motion_z $(score)

$scoreboard players set $air_frame $(score) 3

## Missing unstoppable?

$scoreboard players reset #motion_x $(score)
$scoreboard players reset #motion_y $(score)
$scoreboard players reset #motion_z $(score)
$scoreboard players reset #snc.mot_x0 $(score)
$scoreboard players reset #snc.mot_y0 $(score)
$scoreboard players reset #snc.mot_z0 $(score)