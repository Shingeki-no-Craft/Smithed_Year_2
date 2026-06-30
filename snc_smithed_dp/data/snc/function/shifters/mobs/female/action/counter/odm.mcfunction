advancement revoke @s only snc:shifters/female/hit
# Is female titan doing parry?
execute unless score #parry female_vars matches 1 run return -1
# SnC's ODM
execute if entity @s[tag=!transform] if predicate snc:odm/has_full_odm run tag @s add snc.female.swing
execute if entity @s[tag=!transform] if predicate snc:odm/has_full_odm as 0000007f-0000-007f-0000-007f00000007 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/animate/swing/grab

# Hope's ODM
execute if entity @s[tag=!transform] if predicate snc:odm/has_full_hope_odm run tag @s add snc.female.swing
execute if entity @s[tag=!transform] if predicate snc:odm/has_full_hope_odm as 0000007f-0000-007f-0000-007f00000007 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/animate/swing/grab

execute as 0000007f-0000-007f-0000-007f00000007 on passengers if entity @s[tag=transform] run function snc:shifters/mobs/female/abilities/give