execute as @e[type=item_display,tag=snc.entity.zwei] run kill @s

summon minecraft:item_display ~ ~ ~ {Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.zwei"],item:{id:"apple",count:1,components:{'minecraft:item_model':'titan/zwei/idle/1'}}}