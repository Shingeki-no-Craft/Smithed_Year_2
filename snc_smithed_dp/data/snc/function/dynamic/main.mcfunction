execute if entity @s[type=player] if function snc:player/main run return -1
## Projectiles
execute if entity @s[tag=snc.projectile] if function snc:player/war/main run return -1
## Shifter
execute if entity @s[tag=snc.shifter,type=!villager] if function snc:shifters/mobs/check_dead run return -1
