execute positioned -25.0 73.5 110.0 facing -20 74 114 if score @s snc.quest.odmtrack.progress matches 1 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -25.0 73.5 110.0 as @s[dx=1, dy=1, dz=1] if score @s snc.quest.odmtrack.progress matches 1 run function snc:dynamic/odmtrack_starter/particles/point

execute positioned -29.0 73.5 97.0 facing -30 73.5 101 if score @s snc.quest.odmtrack.progress matches 2 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -29.0 73.5 97.0 facing -30 73.5 101 if score @s snc.quest.odmtrack.progress matches 1 run function snc:dynamic/odmtrack_starter/particles/gold
execute positioned -29.0 73.5 97.0 if score @s[dx=1, dy=1, dz=1] snc.quest.odmtrack.progress matches 2 run function snc:dynamic/odmtrack_starter/particles/point

execute positioned -19.5 73 95.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 3 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -19.5 73 95.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 2 run function snc:dynamic/odmtrack_starter/particles/gold
execute positioned -19.5 73 95.5 as @s[dx=1, dy=1, dz=1] if score @s snc.quest.odmtrack.progress matches 3 run function snc:dynamic/odmtrack_starter/particles/point

execute positioned -9.5 72.1 93.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 4 run function snc:dynamic/odmtrack_starter/particles/yellow
execute positioned -9.5 72.1 93.5 facing -29 72 93 if score @s snc.quest.odmtrack.progress matches 3 run function snc:dynamic/odmtrack_starter/particles/gold
execute positioned -9.5 72.1 93.5 as @s[dx=1, dy=1, dz=1] if score @s snc.quest.odmtrack.progress matches 4 run function snc:dynamic/odmtrack_starter/particles/point

execute if score @s snc.quest.odmtrack.progress matches 5 run particle trial_spawner_detection_ominous -5.5 69.1 91.5 .25 0 .25 0 1 force @s
execute if score @s snc.quest.odmtrack.progress matches 4 run particle trial_spawner_detection -5.5 69.1 91.5 .25 0 .25 0 1 force @s