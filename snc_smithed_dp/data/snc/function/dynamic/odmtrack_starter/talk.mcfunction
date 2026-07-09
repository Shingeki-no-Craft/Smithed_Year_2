advancement revoke @s only snc:mannequin/odmtrack_starter
playsound entity.villager.ambient master @s ~ ~ ~ 1 2

# Don't have ODM Gear
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 run scoreboard players reset @s snc.wait.odmtrack
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if function snc:dynamic/odmtrack_starter/start_quest run return -1


# Has ODM Gear and finished the quest
execute if score @s snc.quest.get_odm matches 1 if score @s snc.quest.odmtrack matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" You are welcome to train here at any given moment.","color":"white"}]
execute if score @s snc.quest.get_odm matches 1 if score @s snc.quest.odmtrack matches 1 run return -1


# Fallback, doesn't have odm
tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" I can't help you right now.","color":"white"}]