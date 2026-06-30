advancement revoke @s only snc:mannequin/odmtrack_completer
playsound entity.villager.ambient master @s ~ ~ ~ 1 1

# Didn't Finish Get ODM Quest

execute unless score @s snc.quest.get_odm matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <TL. SkullHPT>","color":"dark_green"},{"text":" You're not supposed to be here...","color":"white"}]

# Have ODM Gear + In Track BUT! Didn't finish the progress...

execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if score @s snc.quest.odmtrack.progress matches 1..4 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <TL. SkullHPT>","color":"dark_green"},{"text":" You're not ready yet!","color":"white"}]

# Have ODM Gear + Just Finished Track Quest

execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if score @s snc.quest.odmtrack.progress matches 5 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <TL. SkullHPT>","color":"dark_green"},{"text":" Soldier","color":"gold"},{"text":"... You have "},{"text":"completed","color":"green"},{"text":" the track! You have now received a "},{"text":"badge","color":"dark_purple"},{"text":" indicating your success. Since you're now stronger... you might wanna fight off some titans at the "},{"text":"battlegrounds","color":"red"},{"text":"!"}]
execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 if score @s snc.quest.odmtrack.progress matches 5 run return run function snc:dynamic/odmtrack_completer/finish

# Already Finished Track Quest
execute if score @s snc.quest.odmtrack matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <TL. SkullHPT>","color":"dark_green"},{"text":" You have already completed the track, I recommend you fight off a titan at the ","color":"white"},{"text":"battleground","color":"red"},{"text":".","color":"white"}]