advancement revoke @s only snc:mannequin/allawie
execute if score @s snc.quest.battlegrounds matches 1..5 run return 0
execute at @s run playsound entity.villager.ambient master @s ~ ~ ~ 1

# Explain at first
execute unless score @s snc.quest.battlegrounds matches 1.. run function snc:dynamic/allawie/explain

# Encourage le player
execute if score @s snc.quest.battlegrounds matches 6.. run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Allawie>","color":"dark_purple"},{"text":" Let's see what you can do in the battlegrounds...", "color":"white"}]