# execute as @e at @s run function snc:dynamic/main
# Player
#execute as @a at @s run function snc:player/main
## Projectiles
execute as @e[tag=snc.projectile] at @s run function snc:player/war/main
## Shifter
execute as @e[type=!villager, tag=snc.shifter] at @s run function snc:shifters/mobs/check_dead

# Attack Head
execute as @e[type=item_display,tag=snc.entity.attack_head] at @s positioned -79 79 103 run function snc:dynamic/attack_titan/head

# Cart Titan
execute as @e[type=item_display,tag=animated_java.cart.root] at @s run function snc:dynamic/cart_titan/main

# Animatronic
execute as @e[type=item_display, tag=snc.titan.animatronic] at @s run function snc:dynamic/titan_animatronic/main

# NPC
execute as @e[type=mannequin, tag=snc.npc] at @s run function snc:dynamic/npc

# Cave
particle minecraft:snowflake -19 70 104 24 5 24 0 1 force
particle minecraft:electric_spark -19 70 104 24 16 24 0 1 force
#particle minecraft:firefly -19 70 104 24 16 24 0 1 force
## SNC : Tick
scoreboard players add snc.ticks snc.clock 1
execute if score snc.ticks snc.clock matches 20 run function snc:seconds

# Dynamic - NPCs
execute as @a[scores={snc.quest.battlegrounds=1..}] run scoreboard players remove @s snc.wait.battlegrounds 1
execute as @a[scores={snc.wait.battlegrounds=0}] run function snc:dynamic/allawie/explain
