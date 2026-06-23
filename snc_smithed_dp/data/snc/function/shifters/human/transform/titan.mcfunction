tag @s remove hidden.shifter
effect give @s levitation 3 1 true
effect give @s invisibility 1 0 true

ride @s dismount
function snc:shifters/function/unique {"pre":"function snc:logic/trigger/dialogue/titan/mastery with storage minecraft:","post":""}

## Save inv
#$function snc:shifters/human/inventory/save/all {"shifter":$(shifter)}
function snc:shifters/mobs/cart/action/shipload/promise
$data modify storage minecraft:$(shifter) Inventory set from entity @s Inventory
$data modify storage minecraft:$(shifter) equipment set from entity @s equipment
$execute if items entity @s armor.head minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage minecraft:$(shifter) equipment.head
$execute if items entity @s armor.chest minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage minecraft:$(shifter) equipment.chest
$execute if items entity @s armor.legs minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage minecraft:$(shifter) equipment.legs
$execute if items entity @s armor.feet minecraft:mushroom_stew[custom_data~{snc_blank:true}] run data remove storage minecraft:$(shifter) equipment.feet

clear @s
tag @s add transform
$advancement grant @s only snc:shifters/$(shifter)/get
advancement grant @s only snc:shifters/aura
effect give @s absorption 20 5 true
$scoreboard players set $health $(shifter)_vars 20

## Explosion
$execute if score $shifter_griefing config matches 1 if score $energy $(shifter)_vars matches 2160.. if score $explosion $(shifter)_vars matches 1 run function snc:shifters/mobs/colossal/action/explosion/spawn {"shifter":$(shifter),"explosion_size_colossal":$(explosion_size_colossal), "explosion_size_passive":$(explosion_size_passive), "explosion_size":$(explosion_size)}