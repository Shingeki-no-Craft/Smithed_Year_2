scoreboard players remove @s snc.wait.odmtrack 1
# Only run at 0
execute if score @s snc.wait.odmtrack matches 1.. run return 1
scoreboard players add @s snc.quest.odmtrack.stage 1

execute if score @s snc.quest.odmtrack.stage matches 1 run function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:[{"text":"Alright "},{"text":"recruit","color":"dark_green"},{"text":", listen up!"}], line_2:["Your ", {"text":"ODM","color":"dark_red"},{"text":" training starts right now."}], line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 2"}
execute if score @s snc.quest.odmtrack.stage matches 1 run scoreboard players set @s snc.wait.odmtrack 50

execute if score @s snc.quest.odmtrack.stage matches 2 run function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:["See this ",{"text":"yellow ring","color":"gold"}," in front of you?"], line_2:{text:""}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 2"}
execute if score @s snc.quest.odmtrack.stage matches 2 run scoreboard players set @s snc.wait.odmtrack 50
execute if score @s snc.quest.odmtrack.stage matches 2 run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 1
execute if score @s snc.quest.odmtrack.stage matches 2 run playsound minecraft:entity.copper_golem.spawn master @s ~ ~ ~ 1 1
execute if score @s snc.quest.odmtrack.stage matches 2 run particle copper_fire_flame -9 73 113 .5 .5 .5 .25 64 force @s
execute if score @s snc.quest.odmtrack.stage matches 2 run scoreboard players set @s snc.quest.odmtrack.progress 1

execute if score @s snc.quest.odmtrack.stage matches 3 run function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:["",{"text":"Your mission","color":"dark_green"}," is to grapple and swing"], line_2:["",{text:"directly through",color:dark_red}," every single one of them."], line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 2"}
execute if score @s snc.quest.odmtrack.stage matches 3 run scoreboard players set @s snc.wait.odmtrack 50

execute if score @s snc.quest.odmtrack.stage matches 4 run function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:["Once you are done. Go and",{"text":" talk ","color":"dark_red"},"with my colleague",], line_2:["",{text:"Skull",color:dark_green}," [",{"player":"SkullHPT",color:white},{text:"\uF82C",font:"snc:gui"},"] ",{"text":"at the end","color":"dark_red"}," of the track to ",{"text":"get a badge","color":"dark_purple"},"."], line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 2"}
execute if score @s snc.quest.odmtrack.stage matches 4 run scoreboard players set @s snc.wait.odmtrack 50

execute if score @s snc.quest.odmtrack.stage matches 5.. run function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:["Don't let me down. Go",{"text":" Soldier","color":"dark_green"},"!"], line_2:{text:""}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 2"}

#execute if score @s snc.quest.odmtrack.stage matches 5.. run scoreboard players set @s snc.quest.odmtrack.stage 6

return 1