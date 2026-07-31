## Projectiles
execute as @e[type=#snc:projectile,tag=snc.projectile] at @s run function snc:player/war/main
execute if entity @n[type=#snc:projectile,tag=snc.projectile] run schedule function snc:logic/motion/projectile_tick 1t replace