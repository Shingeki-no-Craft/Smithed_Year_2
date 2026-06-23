advancement revoke @s only snc:shifters/has_vanish
# Mastery enabled
execute if score $shifter_mastery config matches 1 run function snc:shifters/function/unique {"pre":"execute if score $master ","post":"_vars matches 10.. run tag @s add snc.shifter.vanish"}
execute if score $shifter_mastery config matches 1 run function snc:shifters/function/unique {"pre":"execute if score $master ","post":"_vars matches 10.. run function snc:shifters/human/transform/human_aux"}
# Mastery disabled
execute if score $shifter_mastery config matches 0 run tag @s add snc.shifter.vanish
execute if score $shifter_mastery config matches 0 run function snc:shifters/human/transform/human_aux

# Return items
execute if entity @s[tag=transform] run function snc:shifters/function/unique {"pre":"function snc:shifters/mobs/","post":"/abilities/give"} 