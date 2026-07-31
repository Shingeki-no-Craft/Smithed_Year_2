attribute @s scale base set 1
attribute @s entity_interaction_range base reset
tag @s remove snc.battlegrounds.temp_female
execute if entity @s[team=snc.battlegrounds.scout] run team leave @s
execute if entity @s[team=snc.battlegrounds.female] run team leave @s

execute if score @s female_vars matches 1 run function snc:shifters/human/remove