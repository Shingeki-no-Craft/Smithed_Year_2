effect give @s levitation 3 1 true
effect give @s invisibility 1 0 true

ride @s dismount

## Save inv
#$function snc:shifters/human/inventory/save/all {"shifter":female}
data modify storage snc:female Inventory set from entity @s Inventory
data modify storage snc:female equipment set from entity @s equipment
execute if items entity @s armor.head minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage snc:female equipment.head
execute if items entity @s armor.chest minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage snc:female equipment.chest
execute if items entity @s armor.legs minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage snc:female equipment.legs
execute if items entity @s armor.feet minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage snc:female equipment.feet

clear @s
tag @s add snc.titan
tellraw @a {text:"[INSERT STAMP HERE]", color:"yellow"}

effect give @s absorption 20 5 true
scoreboard players set $health female_vars 20