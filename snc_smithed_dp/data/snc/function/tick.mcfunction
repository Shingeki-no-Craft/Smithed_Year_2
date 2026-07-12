execute as @e at @s run function snc:dynamic/main

# Cave
particle minecraft:snowflake -19 70 104 24 5 24 0 1 force
particle minecraft:electric_spark -19 70 104 24 16 24 0 1 force
#particle minecraft:firefly -19 70 104 24 16 24 0 1 force
## SNC : Tick
scoreboard players add snc.ticks snc.clock 1
execute if score snc.ticks snc.clock matches 20 run function snc:seconds

# --------------------------- [Dynamic - Zwei Jumpscare] --------------------------- #

execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 if score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/jump
execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 unless score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/idle
execute if score $zwei.jumpscare snc.wait matches 1.. run scoreboard players remove $zwei.jumpscare snc.wait 1

#Trigger
execute unless score $zwei.jumpscare snc.wait matches 1.. at 3ffc9084-50a9-4616-bf2e-0c267db28467 if entity @p[x=-67.5, y=80, z=105.5,distance=..1.1] run function snc:dynamic/zwei/trigger

# --------------------------- [Dynamic - NPCs] --------------------------- #

execute as @a[scores={snc.quest.battlegrounds=1..}] run scoreboard players remove @s snc.wait.battlegrounds 1
execute as @a[scores={snc.wait.battlegrounds=0}] run function snc:dynamic/allawie/explain
