execute as @e[type=item_display,tag=snc.entity.zwei] run kill @s

#UUID: 3ffc9084-50a9-4616-bf2e-0c267db28467
summon minecraft:item_display -64.5 80.1 94.5 {UUID: [1073516676,1353270806,-1087501274,2108851303], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.zwei"],item:{id:"apple",count:1,components:{'minecraft:item_model':"snc:dynamic/zwei/idle/1"}}}
execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 at @s run tp @s -64.5 81.6 94.5 facing ^270 ^ ^