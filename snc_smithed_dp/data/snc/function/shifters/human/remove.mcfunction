## Removes shifter and kills the user, generally used when the player was offline during the Curse of Ymir
execute if entity @s[tag=snc.titan] run clear @s
execute if entity @s[tag=snc.titan] run gamemode survival
tag @s remove snc.female
tag @s remove snc.titan
tag @s remove snc.injured
tag @s remove snc.infct
tag @s remove hidden.shifter

function snc:shifters/human/inventory/remove_marks
scoreboard players reset @s shifter_vars