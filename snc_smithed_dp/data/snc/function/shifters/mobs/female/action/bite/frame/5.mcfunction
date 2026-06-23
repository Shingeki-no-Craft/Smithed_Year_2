execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/female/head {"frame":1, "rotate":0}
execute on vehicle on passengers if entity @s[tag=transform] run tag @s remove consume
scoreboard players set $hold female_vars 0
execute unless score state female_vars matches 2 run scoreboard players set state female_vars 3