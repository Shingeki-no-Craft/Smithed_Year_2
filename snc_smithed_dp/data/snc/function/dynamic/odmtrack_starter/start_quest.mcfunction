execute if score @s snc.quest.odmtrack.stage matches 1.. at @s run playsound entity.villager.ambient master @s ~ ~ ~ 3 2
scoreboard players add @s snc.quest.odmtrack.stage 1
scoreboard players reset @s snc.wait.odmtrack

execute if score @s snc.quest.odmtrack.stage matches 1 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" Alright, "},{"text":"recruit","color":"gold"},{"text":", listen up! Your "},{"text":"ODM","color":"red"},{"text":" training starts right now."}]
execute if score @s snc.quest.odmtrack.stage matches 1 run scoreboard players set @s snc.wait.odmtrack 50

execute if score @s snc.quest.odmtrack.stage matches 2 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" See those glowing "},{"text":"yellow","color":"yellow"},{"text":" circles floating ahead of "},{"text":"you","color":"gold"},{"text":"?"}]
execute if score @s snc.quest.odmtrack.stage matches 2 run scoreboard players set @s snc.wait.odmtrack 50

execute if score @s snc.quest.odmtrack.stage matches 3 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" You","color":"gold"},{"text":" need to grapple and swing directly "},{"text":"through","color":"red"},{"text":" every single one of them."}]
execute if score @s snc.quest.odmtrack.stage matches 3 run scoreboard players set @s snc.wait.odmtrack 50

execute if score @s snc.quest.odmtrack.stage matches 4 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" Pass "},{"text":"through","color":"red"},{"text":" all of them to "},{"text":"complete","color":"green"},{"text":" the track quest. Don't let "},{"text":"me","color":"dark_green"},{"text":" down!"}]
execute if score @s snc.quest.odmtrack.stage matches 4 run scoreboard players set @s snc.wait.odmtrack 40

execute if score @s snc.quest.odmtrack.stage matches 5 run tellraw @s ["",{"text":"[NPC]","color":"yellow"},{"text":" <Gen. Hope>","color":"dark_green"},{"text":" Go ","color":"white"},{"text":"Soldier","color":"gold"},{"text":"!","color":"white"}]
execute if score @s snc.quest.odmtrack.stage matches 5 run scoreboard players set @s snc.quest.odmtrack.progress 1