playsound snc.titan.footsteps player @a ~ ~ ~ 2 1

execute as @e[distance=..12,predicate=!snc:shifters/female/score] run function snc:shifters/combat/step with storage minecraft:female

particle minecraft:block{block_state:"dirt"} ^ ^ ^2 1 0 1 0 30 force