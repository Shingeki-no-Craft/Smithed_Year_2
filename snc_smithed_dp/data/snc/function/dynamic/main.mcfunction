execute if entity @s[type=player] if function snc:player/main run return -1
## Projectiles
execute if entity @s[tag=snc.projectile] if function snc:player/war/main run return -1
## Shifter
execute if entity @s[type=!villager, tag=snc.shifter] if function snc:shifters/mobs/check_dead run return -1

# --------------------------- [Attack Head] --------------------------- #
execute if entity @s[tag=snc.entity.attack_head] positioned -79 79 103 run function snc:dynamic/attack_titan/head

# Cart Titan
execute if entity @s[type=item_display,tag=animated_java.cart.root] run function snc:dynamic/cart_titan/main

# Animatronic
execute if entity @s[type=item_display, tag=snc.titan.animatronic] run function snc:dynamic/titan_animatronic/main

# NPC
execute if entity @s[tag=snc.npc] run function snc:dynamic/npc