particle block{block_state:"nether_wart_block"} ~ ~ ~ .5 .5 .5 0 10 force

execute positioned ~-4.5 ~-4.5 ~-4.5 as @e[type=!#snc:pivot,dx=8,dy=8,dz=8,predicate=!snc:shifters/female/score] unless score @s shifter_vars matches 4 run function snc:shifters/mobs/female/action/swing/damage with storage snc:female

execute unless predicate snc:is_riding run particle damage_indicator ~ ~ ~ 1 1 1 0 20 force
execute unless predicate snc:is_riding run particle block{block_state:"crimson_nylium"} ~ ~-.5 ~ 2 1 2 0 20 force
#execute unless predicate snc:is_riding run particle campfire_cosy_smoke ~ ~1 ~ 1 2 1 .02 50 force
execute unless predicate snc:is_riding run particle crit ~ ~-.5 ~ 0 0 0 1 100 force
execute unless predicate snc:is_riding run playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 6 .8

execute unless predicate snc:is_riding run kill