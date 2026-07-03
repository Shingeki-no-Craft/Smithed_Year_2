scoreboard players set state female_vars 5
execute on vehicle run attribute @s minecraft:scale base set 4
execute on vehicle run effect clear @s slowness
execute on vehicle on passengers if entity @s[tag=snc.titan] run function snc:shifters/mobs/female/abilities/give