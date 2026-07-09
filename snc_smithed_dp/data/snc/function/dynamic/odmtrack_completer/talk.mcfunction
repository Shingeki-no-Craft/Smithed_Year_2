advancement revoke @s only snc:mannequin/odmtrack_completer
# Didn't Finish Get ODM Quest

execute unless score @s snc.quest.get_odm matches 1 run function snc:dynamic/dialog_box {name:{text:"TL. Skull",color:green}, line_1:{"text":"You're not supposed to be here..."}, line_2:{"text":""}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 1 1"}

# Have ODM Gear + Not in track
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 unless score @s snc.quest.odmtrack.progress matches 1.. run function snc:dynamic/dialog_box {name:{text:"TL. Skull",color:green}, line_1:{"text":"What are you doing here? I don't recognize you..."}, line_2:{"text":""}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 1 1"}

# Have ODM Gear + In Track BUT! Didn't finish the progress...
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if score @s snc.quest.odmtrack.progress matches 1..5 run function snc:dynamic/dialog_box {name:{text:"TL. Skull",color:green}, line_1:{"text":"You're not ready yet!"}, line_2:{"text":""}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 1 1"}

# Have ODM Gear + Just Finished Track Quest
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if score @s snc.quest.odmtrack.progress matches 6 run function snc:dynamic/dialog_box {name:{text:"TL. Skull",color:green}, line_1:["Soldier...", {"text":" You have completed ", color:"dark_green"}, "the track!"], line_2:["Wear this ", {"text":"badge", color:dark_purple}, " with pride for your success. You seem"], line_3:[{text:"skilled... Why not head at the"},{"text":" battlegrounds ","color":"dark_red"},"now?"], sound:"entity.villager.ambient master @s ~ ~ ~ 1 1"}
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if score @s snc.quest.odmtrack.progress matches 6 run return run function snc:dynamic/odmtrack_completer/finish

# Already Finished Track Quest
execute if score @s snc.quest.odmtrack matches 1 run function snc:dynamic/dialog_box {name:{text:"TL. Skull",color:green}, line_1:{"text":"You have already completed the track."}, line_2:[{"text":"I recommend you prove yourself at the "},{"text":"battleground","color":"dark_red"},"."], line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 1 1"}