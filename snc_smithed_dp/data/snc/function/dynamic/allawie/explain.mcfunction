execute if score @s snc.quest.battlegrounds matches 1..5 at @s run playsound entity.villager.ambient master @s ~ ~ ~ 3
scoreboard players add @s snc.quest.battlegrounds 1
scoreboard players reset @s snc.wait.battlegrounds

execute if score @s snc.quest.battlegrounds matches 1 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"Alright, listen up before you run out there and immediately get stomped into a "},{"text":"pancake","color":"gold"},{"text":"! Every single recruit out on the battleground starts with the exact same baseline survival kit: a standard issue "},{"text":"Scout Uniform","bold":true,"color":"dark_green"},{"text":" and "},{"text":"ODM Gear","bold":true,"color":"red"},{"text":"."}]
execute if score @s snc.quest.battlegrounds matches 1 run scoreboard players set @s snc.wait.battlegrounds 55

execute if score @s snc.quest.battlegrounds matches 2 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"But here is where things get interesting..."}]
execute if score @s snc.quest.battlegrounds matches 2 run scoreboard players set @s snc.wait.battlegrounds 50

execute if score @s snc.quest.battlegrounds matches 3 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"The absolute second "},{"text":"this","color":"red"},{"text":" booth activates, the entire game changes. A massive power surge hits the field ("},{"text":"lie","italic":true,"color":"gray"},{"text":"), and a single, high-stakes kit becomes available to "},{"text":"claim","color":"green"},{"text":"!"}]
execute if score @s snc.quest.battlegrounds matches 3 run scoreboard players set @s snc.wait.battlegrounds 50

execute if score @s snc.quest.battlegrounds matches 4 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"The very first person to ","color":"yellow"},{"text":"claim","color":"green"},{"text":" that kit will unlock ","color":"yellow"},{"text":"The Female Titan","bold":true,"color":"dark_purple"},{"text":" transformation.","color":"yellow"}]
execute if score @s snc.quest.battlegrounds matches 4 run scoreboard players set @s snc.wait.battlegrounds 50

execute if score @s snc.quest.battlegrounds matches 5 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"Once you have it, you will transform into "},{"text":"The Female Titan","color":"dark_purple"},{"text":" and your objective is to fight and defeat the other players."}]
execute if score @s snc.quest.battlegrounds matches 5 run scoreboard players set @s snc.wait.battlegrounds 60

execute if score @s snc.quest.battlegrounds matches 6 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"So, are you going to fight with your "},{"text":"ODM Gear","color":"red"},{"text":", or are you going to try and be the first to "},{"text":"claim","color":"green"},{"text":" the Titan? Good luck out there!"}]
execute if score @s snc.quest.battlegrounds matches 6 run scoreboard players set @s snc.wait.battlegrounds 40

execute if score @s snc.quest.battlegrounds matches 7 at @s run playsound entity.player.levelup master @s ~ ~ ~ 1