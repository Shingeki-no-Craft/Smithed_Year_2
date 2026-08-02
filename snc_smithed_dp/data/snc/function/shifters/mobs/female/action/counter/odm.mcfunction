advancement revoke @s only snc:shifters/female/hit
# Is female titan doing parry?
execute unless score #parry female_vars matches 1 run return -1
# SnC's ODM
execute if entity @s[tag=!snc.titan] if predicate snc:odm/has_full_odm run tag @s add snc.female.swing
execute if entity @s[tag=!snc.titan] if predicate snc:odm/has_full_odm as @n[type=skeleton_horse, tag=snc.body] on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/animate/swing/grab

# Hope's ODM
execute if entity @s[tag=!snc.titan] if predicate snc:odm/has_full_hope_odm run tag @s add snc.female.swing
execute if entity @s[tag=!snc.titan] if predicate snc:odm/has_full_hope_odm as @n[type=skeleton_horse, tag=snc.body] on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/animate/swing/grab

execute as @n[type=skeleton_horse, tag=snc.body] on passengers if entity @s[tag=snc.titan] run function snc:shifters/mobs/female/abilities/give