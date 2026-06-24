advancement revoke @s only snc:mannequin/odm_giver

execute unless score @s snc.quest.get_odm matches 1 run tellraw @s {"text":"<General Energy>","color":"dark_green","bold":false,"extra":[{"text":" Ah, a fresh recruit! Here is your ODM Gear—this steel and gas is all that stands between you and a Titan's jaws, so use it well and don't die out there, Soldier!","color":"white"}]}
execute unless score @s snc.quest.get_odm matches 1 run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute unless score @s snc.quest.get_odm matches 1 run function snc:api/give/military/scouts/odm/gas_trigger
execute unless score @s snc.quest.get_odm matches 1 run function snc:api/give/military/scouts/odm/gear
execute unless score @s snc.quest.get_odm matches 1 run scoreboard players set @s snc.quest.get_odm 1

execute if score @s snc.quest.get_odm matches 1 run tellraw @s {"text":"<General Energy>","color":"dark_green","bold":false,"extra":[{"text":" Soldier... You have already received your ODM Gear. Now get out there and make it count!","color":"white"}]}
execute if score @s snc.quest.get_odm matches 1 run playsound entity.villager.no master @s ~ ~ ~ 1 1