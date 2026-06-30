advancement revoke @s only snc:mannequin/odmtrack_suggester
playsound entity.villager.ambient master @s ~ ~ ~ 1 0.8

execute unless score @s snc.quest.get_odm matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Sld. Rifleman>","color":"dark_green"},{"text":" You haven't received your ","color":"white"},{"text":"ODM Gear","color":"red"},{"text":" yet! Before you can head out into the field, you must visit ","color":"white"},{"text":"[NPC]","color":"yellow"},{"text":" Gen. Energy","color":"dark_green"},{"text":" to claim your equipment. Look for them outside the cave to get geared up.","color":"white"}]

execute if score @s snc.quest.get_odm matches 1 unless score @s snc.quest.odmtrack matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Sld. Rifleman>","color":"dark_green"},{"text":" You've got your "},{"text":"ODM Gear","color":"red"},{"text":"! Now, head over to "},{"text":"[NPC]","color":"yellow"},{"text":" Gen. Hope","color":"dark_green"},{"text":" She\u2019ll guide you on how you can improve your mobility."}]

execute if score @s snc.quest.odmtrack matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Sld. Rifleman>","color":"dark_green"},{"text":" I wonder what happens if "},{"text":"The Colossal Titan","color":"aqua"},{"text":" gets "},{"text":"royal blood","color":"yellow"},{"text":"...."}]