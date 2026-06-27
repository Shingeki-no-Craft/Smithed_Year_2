execute as @a[scores={snc.quest.odmtrack.stage=1..}] positioned -25.0 73.5 110.0 facing -20 74 114 run function snc:dynamic/odmtrack_starter/particles/summon
execute positioned -25.0 73.5 110.0 as @p[distance=..3] if score @s snc.quest.odmtrack.progress matches 1 run scoreboard players add @s snc.quest.odmtrack.progress 1

execute as @a[scores={snc.quest.odmtrack.stage=1..}] positioned -29.0 73.5 97.0 facing -30 73.5 101 run function snc:dynamic/odmtrack_starter/particles/summon
execute positioned -29.0 73.5 97.0 as @p[distance=..3] if score @s snc.quest.odmtrack.progress matches 2 run scoreboard players add @s snc.quest.odmtrack.progress 1

execute as @a[scores={snc.quest.odmtrack.stage=1..}] positioned -19.5 71.8 93.5 facing -29 72 93 run function snc:dynamic/odmtrack_starter/particles/summon
execute positioned -19.5 71.8 93.5 as @p[distance=..3] if score @s snc.quest.odmtrack.progress matches 3 run scoreboard players add @s snc.quest.odmtrack.progress 1

execute as @a[scores={snc.quest.odmtrack.stage=1..}] positioned -9.5 71.1 93.5 facing -29 72 93 run function snc:dynamic/odmtrack_starter/particles/summon
execute positioned -9.5 71.1 93.5 as @p[distance=..3] if score @s snc.quest.odmtrack.progress matches 4 run scoreboard players add @s snc.quest.odmtrack.progress 1