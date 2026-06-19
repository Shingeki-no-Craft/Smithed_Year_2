execute as @e at @s run function snc:ent/main

execute as @e[type=item_display,tag=snc.entity.zwei,scores={snc.animation_jump.zwei=1..}] run function snc:dynamic/zwei/jump
execute as @e[type=item_display,tag=snc.entity.zwei] unless score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/idle