advancement revoke @s only snc:mannequin/odmtrack_starter
playsound entity.villager.ambient master @s ~ ~ ~ 1 2

# Don't have ODM Gear
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 run scoreboard players reset @s snc.wait.odmtrack
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if function snc:dynamic/odmtrack_starter/start_quest run return -1


# Has ODM Gear and finished the quest
execute if score @s snc.quest.get_odm matches 1 if score @s snc.quest.odmtrack matches 1 run function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:{"text":"You are welcome to train here at any given moment."}, line_2:{text:""}, line_3:{text:""}}

execute if score @s snc.quest.get_odm matches 1 if score @s snc.quest.odmtrack matches 1 run return -1

# Fallback, doesn't have odm
function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:{"text":"I can't help you right now."}, line_2:{text:""}, line_3:{text:""}}