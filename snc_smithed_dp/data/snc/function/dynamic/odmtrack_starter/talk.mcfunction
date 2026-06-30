advancement revoke @s only snc:mannequin/odmtrack_starter
playsound entity.villager.ambient master @s ~ ~ ~ 1 2

# Don't have ODM Gear
execute unless score @s snc.quest.get_odm matches 1.. run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" I don't think I can help you right now.","color":"white"}]

# Have ODM Gear but didn't finish the quest + inactive quest
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1.. unless score @s snc.quest.odmtrack.progress matches 1.. run function snc:dynamic/odmtrack_starter/start_quest

# Have ODM Gear but didn't finish the quest + active quest
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1.. if score @s snc.quest.odmtrack.progress matches 1.. run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" Go "},{"text":"Soldier","color":"gold"},{"text":"! Go!"}]

# Have ODM Gear and finished the quest
execute if score @s snc.quest.get_odm matches 1 if score @s snc.quest.odmtrack matches 1.. run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" You are welcome to train here at any given moment.","color":"white"}]