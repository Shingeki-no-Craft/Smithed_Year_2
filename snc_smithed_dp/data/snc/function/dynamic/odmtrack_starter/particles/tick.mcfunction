execute positioned -9 73 113 facing -20 74 114 if score @s snc.quest.odmtrack.progress matches 1 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -9 73 113 if entity @s[dx=1, dy=1, dz=1] if score @s snc.quest.odmtrack.progress matches 1 run function snc:dynamic/odmtrack_starter/particles/point

execute positioned -25.0 73.5 110.0 facing -4 71 113 if score @s snc.quest.odmtrack.progress matches 2 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -25.0 73.5 110.0 facing -4 71 113 if score @s snc.quest.odmtrack.progress matches 1 run function snc:dynamic/odmtrack_starter/particles/gold
execute positioned -25.0 73.5 110.0 if entity @s[dx=1, dy=1, dz=1] if score @s snc.quest.odmtrack.progress matches 2 run function snc:dynamic/odmtrack_starter/particles/point

execute positioned -29.0 73.5 97.0 facing -30 73.5 101 if score @s snc.quest.odmtrack.progress matches 3 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -29.0 73.5 97.0 facing -30 73.5 101 if score @s snc.quest.odmtrack.progress matches 2 run function snc:dynamic/odmtrack_starter/particles/gold
execute positioned -29.0 73.5 97.0 if score @s[dx=1, dy=1, dz=1] snc.quest.odmtrack.progress matches 3 run function snc:dynamic/odmtrack_starter/particles/point

execute positioned -19.5 73 95.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 4 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -19.5 73 95.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 3 run function snc:dynamic/odmtrack_starter/particles/gold
execute positioned -19.5 73 95.5 if entity @s[dx=1, dy=1, dz=1] if score @s snc.quest.odmtrack.progress matches 4 run function snc:dynamic/odmtrack_starter/particles/point

execute positioned -9.5 72.1 93.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 5 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -9.5 72.1 93.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 4 run function snc:dynamic/odmtrack_starter/particles/gold
execute positioned -9.5 72.1 93.5 if entity @s[dx=1, dy=1, dz=1] if score @s snc.quest.odmtrack.progress matches 5 run function snc:dynamic/odmtrack_starter/particles/point

execute if score @s snc.quest.odmtrack.progress matches 6 run particle trial_spawner_detection_ominous -5.5 69.1 91.5 .25 0 .25 0 1 force @s
execute if score @s snc.quest.odmtrack.progress matches 5 run particle trial_spawner_detection -5.5 69.1 91.5 .25 0 .25 0 1 force @s

# Fail
execute positioned ~ 68 ~ unless entity @s[dy=-128] run return -1
scoreboard players reset @s snc.quest.odmtrack.progress
scoreboard players reset @s snc.quest.odmtrack.stage
scoreboard players reset @s snc.quest.odmtrack
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 2 1
playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 3 2

function snc:dynamic/dialog_box {name:{text:"Gen. Hope",color:green}, line_1:["Oh, you failed. You have to ",{text:"finish the track",color:"dark_red"},"..."], line_2:{text:"Come back when you feel ready."}, line_3:{text:""}, sound:"entity.villager.ambient master @s ~ ~ ~ 3 2"}
