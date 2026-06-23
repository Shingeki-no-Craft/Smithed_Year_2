execute on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/female/head {"frame":1, "rotate":0}
execute on vehicle on passengers if entity @s[type=player] run scoreboard players set shift.regen female_vars 100000
scoreboard players set state female_vars 3

execute on vehicle run effect clear @s levitation
execute on vehicle at @s run tp @s ~ ~-5 ~

execute on vehicle on passengers if entity @s[type=player] run function snc:shifters/mobs/female/abilities/give