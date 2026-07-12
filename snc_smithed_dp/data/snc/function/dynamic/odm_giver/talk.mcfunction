advancement revoke @s only snc:mannequin/odm_giver

execute unless score @s snc.quest.get_odm matches 1 run function snc:dynamic/dialog_box {name:{text:"Gen. Energy",color:green}, line_1:["Ah, a fresh meat! Here, take this your",{"text":" ODM Gear","color":"dark_red"},". This"], line_2:["steel is all that stands between you and the Titans Jaws."], line_3:["Don't",{"text":" die ","color":"dark_red"},"out there",{text:" Soldier", color:dark_green},"!"], sound:"entity.villager.yes master @s ~ ~ ~ 1 1"}
execute unless score @s snc.quest.get_odm matches 1 run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute unless score @s snc.quest.get_odm matches 1 run function snc:api/give/military/scouts/odm/gas_trigger
execute unless score @s snc.quest.get_odm matches 1 run function snc:api/give/military/scouts/odm/gear
execute unless score @s snc.quest.get_odm matches 1 run advancement grant @s only summit.sticker_book:snc/scout

execute unless score @s snc.quest.get_odm matches 1 run return run scoreboard players set @s snc.quest.get_odm 1

execute if score @s snc.quest.get_odm matches 1 run function snc:dynamic/dialog_box {name:{text:"Gen. Energy",color:green}, line_1:["You have already received your",{"text":" ODM Gear","color":"dark_red"},"."], line_2:["Only one per recruit."], line_3:[""], sound:"entity.villager.no master @s ~ ~ ~ 1 1"}