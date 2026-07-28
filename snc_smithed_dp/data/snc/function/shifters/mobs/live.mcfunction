## Shifter
execute as @e[type=#snc:shifter, tag=snc.shifter] at @s run function snc:shifters/mobs/check_dead

execute if entity @n[type=#snc:shifter, tag=snc.shifter] run schedule function snc:shifters/mobs/live 1t