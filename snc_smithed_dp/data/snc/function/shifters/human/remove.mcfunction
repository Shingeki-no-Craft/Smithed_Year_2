## Removes shifter and kills the user, generally used when the player was offline during the Curse of Ymir
execute if entity @s[tag=transform] run clear @s
execute if entity @s[tag=transform] run gamemode survival
tag @s remove shifter
tag @s remove transform
tag @s remove snc.injured
tag @s remove snc.infct
tag @s remove hidden.shifter
function snc:shifters/transfer/tags/remove
function snc:shifters/human/inventory/remove_marks
scoreboard players reset @s shifter_vars

# tellraw @a ["Warning: ",{"text":"Server found shifter but not type!","color":"yellow"}]
execute unless score @s death matches 1.. run kill