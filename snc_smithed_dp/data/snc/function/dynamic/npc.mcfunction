
execute if predicate snc:chance/5 run rotate @s ~16 ~
execute if predicate snc:chance/5 run rotate @s ~-16 ~
execute if predicate snc:chance/5 run rotate @s ~ ~2
execute if predicate snc:chance/5 run rotate @s ~ ~-2

execute if predicate snc:chance/25 run data merge entity @s {pose:"standing"}
execute if predicate snc:chance/1 run data merge entity @s {pose:"crouching"}
execute if predicate snc:chance/1 run swing

execute if entity @s[tag=snc.allawie.67] run function snc:dynamic/allawie/6
execute if entity @s[tag=snc.entity.allawie] if predicate snc:chance/1 run function snc:dynamic/allawie/7

execute unless entity @p[distance=..5] run return -1

rotate @s facing entity @p
