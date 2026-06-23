execute if score $air female_vars matches 0 on vehicle at @s run function snc:shifters/mobs/female/action/movement/step
execute on vehicle at @s if block ~ ~-4 ~ #snc:tangible run return -1
execute if score $air female_vars matches 1 run function snc:shifters/mobs/female/animate/jump_loop