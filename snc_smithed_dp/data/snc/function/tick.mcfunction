execute as @e at @s run function snc:dynamic/main

# Cave
particle minecraft:snowflake -19 70 104 24 5 24 0 1 force
particle minecraft:electric_spark -19 70 104 24 16 24 0 1 force
#particle minecraft:firefly -19 70 104 24 16 24 0 1 force
## SNC : Tick
scoreboard players add snc.ticks snc.clock 1
execute if score snc.ticks snc.clock matches 20 run function snc:seconds

# --------------------------- [Dynamic - NPCs] --------------------------- #

execute as @a[scores={snc.quest.battlegrounds=1..}] run scoreboard players remove @s snc.wait.battlegrounds 1
execute as @a[scores={snc.wait.battlegrounds=0}] run function snc:dynamic/allawie/explain
