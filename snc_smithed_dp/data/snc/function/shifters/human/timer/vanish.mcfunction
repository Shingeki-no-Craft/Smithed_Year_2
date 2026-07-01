advancement revoke @s only snc:shifters/has_vanish

tag @s add snc.shifter.vanish
function snc:shifters/human/transform/human_aux

# Return items
execute if entity @s[tag=snc.titan] run function snc:shifters/function/unique {"pre":"function snc:shifters/mobs/","post":"/abilities/give"} 