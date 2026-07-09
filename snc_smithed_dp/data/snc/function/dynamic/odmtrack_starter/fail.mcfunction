# Win!

# Fail
execute positioned ~ 68 ~ unless entity @s[dy=-10000] run return -1
scoreboard players reset @s snc.quest.odmtrack.progress
scoreboard players reset @s snc.quest.odmtrack.stage
scoreboard players reset @s snc.quest.odmtrack
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 2 1
playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 3 2
#tellraw @s ["",{"text":"[NPC] ","color":"yellow"},{"text":"<Gen. Hope>","color":"dark_green"},{"text":" oop! You have ","color":"white"},{"text":"failed","color":"red"},{"text":" to finish the track....  ","color":"white"},{"text":"you","color":"gold"},{"text":" feel ready!","color":"white"}]

function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:["Oh, you failed. You have to ",{text:"finish the track",color:"dark_red"},"..."], line_2:{text:"Come back when you feel ready."}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 2"}
