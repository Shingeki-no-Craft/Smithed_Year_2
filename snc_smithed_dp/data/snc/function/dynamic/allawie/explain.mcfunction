scoreboard players add @s snc.quest.battlegrounds 1
scoreboard players reset @s snc.wait.battlegrounds

execute if score @s snc.quest.battlegrounds matches 1 run function snc:dynamic/dialog_box {name:{text:"Allawie",color:light_purple}, line_1:{text:"Alright, listen up because I'll say it just once..."}, line_2: ["Every single scout on the ",{text:"battlegrounds",color:dark_red}," starts with the"], line_3:["standard ",{text:"Exploration Uniform",color:dark_green}," and an ",{text:"ODM Gear",color:dark_red},"."], sound:"entity.villager.ambient master @s ~ ~ ~ 3 1"}
execute if score @s snc.quest.battlegrounds matches 1 run scoreboard players set @s snc.wait.battlegrounds 160

execute if score @s snc.quest.battlegrounds matches 2 run function snc:dynamic/dialog_box {name:{text:"Allawie",color:light_purple}, line_1:{text:"But here is where things get interesting...", italic:true, color:dark_gray}, line_2: {text:""}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 1"}
execute if score @s snc.quest.battlegrounds matches 2 run scoreboard players set @s snc.wait.battlegrounds 80

execute if score @s snc.quest.battlegrounds matches 3 run function snc:dynamic/dialog_box {name:{text:"Allawie",color:light_purple}, line_1:["The moment ",{text:"Shingeki no Craft", color:dark_red}," activates, everything"], line_2: {text:"changes... A massive strike hits the field unleashing a"}, line_3:["",{text:"special kit", color:dark_purple}," ready to be claimed!"], sound:"entity.villager.ambient master @s ~ ~ ~ 3 1"}
execute if score @s snc.quest.battlegrounds matches 3 run scoreboard players set @s snc.wait.battlegrounds 160

execute if score @s snc.quest.battlegrounds matches 4 run function snc:dynamic/dialog_box {name:{text:"Allawie",color:light_purple}, line_1:[{text:"Whichever player enters the ",bold:true},{text:"arena", color:dark_red}," first will"], line_2: [{text:"claim the ",bold:true},{text:"Female Titan",color:dark_purple}," transformation!"], line_3:[""], sound:"entity.villager.ambient master @s ~ ~ ~ 3 1"}
execute if score @s snc.quest.battlegrounds matches 4 run scoreboard players set @s snc.wait.battlegrounds 100

execute if score @s snc.quest.battlegrounds matches 5 run function snc:dynamic/dialog_box {name:{text:"Allawie",color:light_purple}, line_1:[{text:"As the "},{text:"Female Titan", color:dark_purple}," your objective is to fight and defeat"], line_2: {text:"the other players."}, line_3:[""], sound:"entity.villager.ambient master @s ~ ~ ~ 3 1"}
execute if score @s snc.quest.battlegrounds matches 5 run scoreboard players set @s snc.wait.battlegrounds 80

execute if score @s snc.quest.battlegrounds matches 6 run function snc:dynamic/dialog_box {name:{text:"Allawie",color:light_purple}, line_1:[{text:"So, are you going to fight with your squad or try be"}], line_2: ["the ",{text:"monster",color:dark_purple},"?"], line_3:["",{text:"Good luck",color:dark_green}," out there!"], sound:"entity.villager.ambient master @s ~ ~ ~ 3 1"}
execute if score @s snc.quest.battlegrounds matches 6 run scoreboard players set @s snc.wait.battlegrounds 40

execute if score @s snc.quest.battlegrounds matches 7 at @s run playsound entity.player.levelup master @s ~ ~ ~ 1