## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage minecraft:female
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage minecraft:female
function snc:shifters/transfer/spaces

## Gamemode
# Combat
function snc:shifters/mobs/female/abilities/atk_1 with storage minecraft:female
function snc:shifters/mobs/female/abilities/atk_2 with storage minecraft:female
function snc:shifters/mobs/female/abilities/atk_3 with storage minecraft:female
function snc:shifters/mobs/female/abilities/atk_4 with storage minecraft:female
#execute if score $gamemode attack_vars matches 1 run function snc:shifters/mobs/attack/abilities/atk_4 with storage minecraft:attack

# Utility
execute if entity @s[tag=transform] run function snc:shifters/mobs/female/head {"frame":1, "rotate":0}

## Gamemode
# execute if score $gamemode attack_vars matches 1 run function snc:shifters/abilities/utility with storage minecraft:attack
# execute if score $gamemode attack_vars matches -1 run function snc:shifters/abilities/combat with storage minecraft:attack

function snc:shifters/transfer/actions with storage minecraft:female