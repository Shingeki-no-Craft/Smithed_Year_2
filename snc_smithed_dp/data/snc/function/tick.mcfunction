execute as @e at @s run function snc:ent/main

## SNC : Tick
scoreboard players add ticks clock 1
execute store result score time clock run time query daytime
execute if score ticks clock matches 20 run function snc:seconds

# --------------------------- [Dynamic - Zwei Jumpscare] --------------------------- #

execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 if score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/jump
execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 unless score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/idle
execute if score $zwei.jumpscare snc.wait matches 1.. run scoreboard players remove $zwei.jumpscare snc.wait 1

# --------------------------- [Dynamic - Attack Titan] --------------------------- #

execute as 2b14f32e-2405-4062-a4a6-2cbd806149d0 at @s if entity @p[distance=..11] as @p at 6c239941-3e1e-4e55-994c-91fccb41a01e run teleport 6c239941-3e1e-4e55-994c-91fccb41a01e ~ ~ ~ facing entity @s eyes
#6c239941-3e1e-4e55-994c-91fccb41a01e at @s run teleport @s ~ ~ ~ facing 


# --------------------------- [Dynamic - Entity] --------------------------- #