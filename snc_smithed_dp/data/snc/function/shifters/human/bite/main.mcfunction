execute if entity @s[tag=snc.handcuffs] if function snc:shifters/human/bite/handcuffs run return -1

damage @s 8 player_attack by @s
execute anchored eyes run particle minecraft:block{block_state:"redstone_block"} ^ ^-.2 ^.3 0 0 0 1 20 force
# Skip if player is transformed
execute if entity @s[tag=transform] run return -1

execute unless score @s shifter_vars matches 1.. if function snc:shifters/human/bite/damage run return -1

tellraw @s[tag=snc.injured] [{translate:"snc.injured.1",color:gray}," ",{translate:"snc.injured.2",color:red}]
execute if entity @s[tag=snc.injured] run return -1

# Mastery not enabled, always shift
execute if score $shifter_mastery config matches 0 if function snc:shifters/human/bite/transform run return -1
# Mastery enabled
execute store result score @s random run random value 1..100
function snc:shifters/function/unique {"pre":"function snc:shifters/human/bite/shifter with storage minecraft:","post":""}
scoreboard players reset @s random