advancement revoke @s only snc:mannequin/odm_giver

execute unless score @s snc.quest.get_odm matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Energy>","color":"dark_green"},{"text":" Ah, a fresh ","color":"white"},{"text":"recruit","color":"gold"},{"text":"! Here is your ","color":"white"},{"text":"ODM Gear","color":"red"},{"text":"\u2014this steel and gas is all that stands between you and a Titan's jaws, so use it well and don't ","color":"white"},{"text":"die","color":"dark_red"},{"text":" out there, ","color":"white"},{"text":"Soldier","color":"gold"},{"text":"!","color":"white"}]
execute unless score @s snc.quest.get_odm matches 1 run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute unless score @s snc.quest.get_odm matches 1 run function snc:api/give/military/scouts/odm/gas_trigger
execute unless score @s snc.quest.get_odm matches 1 run function snc:api/give/military/scouts/odm/gear
execute unless score @s snc.quest.get_odm matches 1 run return run scoreboard players set @s snc.quest.get_odm 1

execute if score @s snc.quest.get_odm matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Energy>","color":"dark_green"},{"text":" Soldier","color":"gold"},{"text":"... You have already received your ","color":"white"},{"text":"ODM Gear","color":"red"},{"text":". Now get out there and make it count!","color":"white"}]
execute if score @s snc.quest.get_odm matches 1 run playsound entity.villager.no master @s ~ ~ ~ 1 1