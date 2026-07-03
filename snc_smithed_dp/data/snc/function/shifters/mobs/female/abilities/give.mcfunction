## Drop current items before replace
function snc:shifters/human/inventory/save/shifter with storage snc:female
function snc:shifters/abilities/clear
function snc:shifters/human/inventory/spawn/shifter with storage snc:female
function snc:shifters/transfer/spaces

## Gamemode
# Combat
function snc:shifters/mobs/female/abilities/atk_1 with storage snc:female
function snc:shifters/mobs/female/abilities/atk_2 with storage snc:female
function snc:shifters/mobs/female/abilities/atk_3 with storage snc:female
function snc:shifters/mobs/female/abilities/atk_4 with storage snc:female

# Utility
execute if entity @s[tag=snc.titan] run function snc:shifters/mobs/female/head {"frame":1, "rotate":0}

function snc:shifters/transfer/actions