execute if score @s snc.quest.battlegrounds matches 1.. at @s run playsound entity.villager.ambient master @s ~ ~ ~ 3
scoreboard players add @s snc.quest.battlegrounds 1
scoreboard players reset @s snc.wait.battlegrounds

execute if score @s snc.quest.battlegrounds matches 1 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"Alright, listen up before you run out there and immediately get stomped into a "},{"text":"pancake","color":"gold"},{"text":"! Every single recruit out on the battleground starts with the exact same baseline survival kit: a standard issue "},{"text":"Scout Uniform","bold":true,"color":"dark_green"},{"text":" and "},{"text":"ODM Gear","bold":true,"color":"red"},{"text":"."}]
scoreboard players set @s snc.wait.battlegrounds 50

execute if score @s snc.quest.battlegrounds matches 2 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"But here is where things get interesting..."}]
scoreboard players set @s snc.wait.battlegrounds 30

execute if score @s snc.quest.battlegrounds matches 3 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"The absolute second "},{"text":"this","color":"red"},{"text":" booth activates, the entire game changes. A massive power surge hits the field ("},{"text":"lie","italic":true,"color":"gray"},{"text":"), and a single, high-stakes kit becomes available to "},{"text":"claim","color":"green"},{"text":"!"}]
scoreboard players set @s snc.wait.battlegrounds 50

execute if score @s snc.quest.battlegrounds matches 4 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"The very first person to "},{"text":"claim","color":"green"},{"text":" that kit will unlock "},{"text":"The Female Titan","bold":true,"color":"dark_purple"},{"text":" transformation."}]
scoreboard players set @s snc.wait.battlegrounds 30

execute if score @s snc.quest.battlegrounds matches 5 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"Once you have it, you will transform into "},{"text":"The Female Titan","color":"dark_purple"},{"text":" and your objective is to fight and defeat the other players."}]
scoreboard players set @s snc.wait.battlegrounds 30

execute if score @s snc.quest.battlegrounds matches 6 run tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Allawie> ","color":"dark_purple"},{"text":"So, are you going to fight with your "},{"text":"ODM Gear","color":"red"},{"text":", or are you going to try and be the first to "},{"text":"claim","color":"green"},{"text":" the Titan? Good luck out there!"}]