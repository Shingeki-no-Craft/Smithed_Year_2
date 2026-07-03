setblock ~ ~2 ~ chest
setblock ~ ~3 ~ chest

# First chest
$execute if data storage snc$(shifter) Inventory[{Slot:0b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:0b}]
$execute if data storage snc$(shifter) Inventory[{Slot:1b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:1b}]
$execute if data storage snc$(shifter) Inventory[{Slot:2b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:2b}]
$execute if data storage snc$(shifter) Inventory[{Slot:3b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:3b}]
$execute if data storage snc$(shifter) Inventory[{Slot:4b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:4b}]
$execute if data storage snc$(shifter) Inventory[{Slot:5b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:5b}]
$execute if data storage snc$(shifter) Inventory[{Slot:6b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:6b}]
$execute if data storage snc$(shifter) Inventory[{Slot:7b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:7b}]
$execute if data storage snc$(shifter) Inventory[{Slot:8b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:8b}]
$execute if data storage snc$(shifter) Inventory[{Slot:9b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:9b}]
$execute if data storage snc$(shifter) Inventory[{Slot:10b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:10b}]
$execute if data storage snc$(shifter) Inventory[{Slot:11b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:11b}]
$execute if data storage snc$(shifter) Inventory[{Slot:12b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:12b}]
$execute if data storage snc$(shifter) Inventory[{Slot:13b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:13b}]
$execute if data storage snc$(shifter) Inventory[{Slot:14b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:14b}]
$execute if data storage snc$(shifter) Inventory[{Slot:15b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:15b}]
$execute if data storage snc$(shifter) Inventory[{Slot:16b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:16b}]
$execute if data storage snc$(shifter) Inventory[{Slot:17b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:17b}]
$execute if data storage snc$(shifter) Inventory[{Slot:18b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:18b}]
$execute if data storage snc$(shifter) Inventory[{Slot:19b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:19b}]
$execute if data storage snc$(shifter) Inventory[{Slot:20b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:20b}]
$execute if data storage snc$(shifter) Inventory[{Slot:21b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:21b}]
$execute if data storage snc$(shifter) Inventory[{Slot:22b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:22b}]
$execute if data storage snc$(shifter) Inventory[{Slot:23b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:23b}]
$execute if data storage snc$(shifter) Inventory[{Slot:24b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:24b}]
$execute if data storage snc$(shifter) Inventory[{Slot:25b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:25b}]
$execute if data storage snc$(shifter) Inventory[{Slot:26b}] run data modify block ~ ~2 ~ Items append from storage snc$(shifter) Inventory[{Slot:26b}]

$data remove storage snc$(shifter) Inventory[{Slot:0b}]
$data remove storage snc$(shifter) Inventory[{Slot:1b}]
$data remove storage snc$(shifter) Inventory[{Slot:2b}]
$data remove storage snc$(shifter) Inventory[{Slot:3b}]
$data remove storage snc$(shifter) Inventory[{Slot:4b}]
$data remove storage snc$(shifter) Inventory[{Slot:5b}]
$data remove storage snc$(shifter) Inventory[{Slot:6b}]
$data remove storage snc$(shifter) Inventory[{Slot:7b}]
$data remove storage snc$(shifter) Inventory[{Slot:8b}]
$data remove storage snc$(shifter) Inventory[{Slot:9b}]
$data remove storage snc$(shifter) Inventory[{Slot:10b}]
$data remove storage snc$(shifter) Inventory[{Slot:11b}]
$data remove storage snc$(shifter) Inventory[{Slot:12b}]
$data remove storage snc$(shifter) Inventory[{Slot:13b}]

item replace entity @s hotbar.0 from block ~ ~2 ~ container.0
item replace entity @s hotbar.1 from block ~ ~2 ~ container.1
item replace entity @s hotbar.2 from block ~ ~2 ~ container.2
item replace entity @s hotbar.3 from block ~ ~2 ~ container.3
item replace entity @s hotbar.4 from block ~ ~2 ~ container.4
item replace entity @s hotbar.5 from block ~ ~2 ~ container.5
item replace entity @s hotbar.6 from block ~ ~2 ~ container.6
item replace entity @s hotbar.7 from block ~ ~2 ~ container.7
item replace entity @s hotbar.8 from block ~ ~2 ~ container.8
item replace entity @s inventory.0 from block ~ ~2 ~ container.9
item replace entity @s inventory.1 from block ~ ~2 ~ container.10
item replace entity @s inventory.2 from block ~ ~2 ~ container.11
item replace entity @s inventory.3 from block ~ ~2 ~ container.12
item replace entity @s inventory.4 from block ~ ~2 ~ container.13
item replace entity @s inventory.5 from block ~ ~2 ~ container.14
item replace entity @s inventory.6 from block ~ ~2 ~ container.15
item replace entity @s inventory.7 from block ~ ~2 ~ container.16
item replace entity @s inventory.8 from block ~ ~2 ~ container.17
item replace entity @s inventory.9 from block ~ ~2 ~ container.18
item replace entity @s inventory.10 from block ~ ~2 ~ container.19
item replace entity @s inventory.11 from block ~ ~2 ~ container.20
item replace entity @s inventory.12 from block ~ ~2 ~ container.21
item replace entity @s inventory.13 from block ~ ~2 ~ container.22
item replace entity @s inventory.14 from block ~ ~2 ~ container.23
item replace entity @s inventory.15 from block ~ ~2 ~ container.24
item replace entity @s inventory.16 from block ~ ~2 ~ container.25
item replace entity @s inventory.17 from block ~ ~2 ~ container.26

## Second chest
$execute if data storage snc$(shifter) Inventory[{Slot:27b}] run data modify storage snc$(shifter) Inventory[{Slot:27b}].Slot set value 0b
$execute if data storage snc$(shifter) Inventory[{Slot:28b}] run data modify storage snc$(shifter) Inventory[{Slot:28b}].Slot set value 1b
$execute if data storage snc$(shifter) Inventory[{Slot:29b}] run data modify storage snc$(shifter) Inventory[{Slot:29b}].Slot set value 2b
$execute if data storage snc$(shifter) Inventory[{Slot:30b}] run data modify storage snc$(shifter) Inventory[{Slot:30b}].Slot set value 3b
$execute if data storage snc$(shifter) Inventory[{Slot:31b}] run data modify storage snc$(shifter) Inventory[{Slot:31b}].Slot set value 4b
$execute if data storage snc$(shifter) Inventory[{Slot:32b}] run data modify storage snc$(shifter) Inventory[{Slot:32b}].Slot set value 5b
$execute if data storage snc$(shifter) Inventory[{Slot:33b}] run data modify storage snc$(shifter) Inventory[{Slot:33b}].Slot set value 6b
$execute if data storage snc$(shifter) Inventory[{Slot:34b}] run data modify storage snc$(shifter) Inventory[{Slot:34b}].Slot set value 7b
$execute if data storage snc$(shifter) Inventory[{Slot:35b}] run data modify storage snc$(shifter) Inventory[{Slot:35b}].Slot set value 8b

$execute if data storage snc$(shifter) equipment.feet run data modify storage snc$(shifter) equipment.feet.Slot set value 9b
$execute if data storage snc$(shifter) equipment.legs run data modify storage snc$(shifter) equipment.legs.Slot set value 10b
$execute if data storage snc$(shifter) equipment.chest run data modify storage snc$(shifter) equipment.chest.Slot set value 11b
$execute if data storage snc$(shifter) equipment.head run data modify storage snc$(shifter) equipment.head.Slot set value 12b
$execute if data storage snc$(shifter) equipment.offhand run data modify storage snc$(shifter) equipment.offhand.Slot set value 13b

$execute if data storage snc$(shifter) Inventory[{Slot:0b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:0b}]
$execute if data storage snc$(shifter) Inventory[{Slot:1b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:1b}]
$execute if data storage snc$(shifter) Inventory[{Slot:2b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:2b}]
$execute if data storage snc$(shifter) Inventory[{Slot:3b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:3b}]
$execute if data storage snc$(shifter) Inventory[{Slot:4b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:4b}]
$execute if data storage snc$(shifter) Inventory[{Slot:5b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:5b}]
$execute if data storage snc$(shifter) Inventory[{Slot:6b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:6b}]
$execute if data storage snc$(shifter) Inventory[{Slot:7b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:7b}]
$execute if data storage snc$(shifter) Inventory[{Slot:8b}] run data modify block ~ ~3 ~ Items append from storage snc$(shifter) Inventory[{Slot:8b}]
$execute if data storage snc$(shifter) equipment.feet run data modify block ~ ~3 ~ Items append from storage snc$(shifter) equipment.feet
$execute if data storage snc$(shifter) equipment.legs run data modify block ~ ~3 ~ Items append from storage snc$(shifter) equipment.legs
$execute if data storage snc$(shifter) equipment.chest run data modify block ~ ~3 ~ Items append from storage snc$(shifter) equipment.chest
# Titan marks config
execute unless score $titan_marks_time config matches 0 run setblock ~ ~3 ~1 chest
$execute unless score $titan_marks_time config matches 0 if data storage snc$(shifter) equipment.head run data modify block ~ ~3 ~1 Items append from storage snc$(shifter) equipment.head
execute unless score $titan_marks_time config matches 0 summon minecraft:chest_minecart run function snc:shifters/human/inventory/drop/helmet
execute unless score $titan_marks_time config matches 0 run setblock ~ ~3 ~1 air replace
$execute unless score $titan_marks_time config matches 0 run item replace entity @s armor.head with mushroom_stew[minecraft:item_model="shifters/marks",custom_data={snc_blank:true, $(shifter)_marks:1b},equippable={'slot': 'head'},enchantments={"minecraft:binding_curse":1},minecraft:enchantment_glint_override=false,tooltip_display={"hide_tooltip":true}]
$execute unless score $titan_marks_time config matches 0 run scoreboard players operation $titan_marks $(shifter)_vars = $titan_marks_time config

$execute if score $titan_marks_time config matches 0 if data storage snc$(shifter) equipment.head run data modify block ~ ~3 ~ Items append from storage snc$(shifter) equipment.head
# Titan marks config
$execute if data storage snc$(shifter) equipment.offhand run data modify block ~ ~3 ~ Items append from storage snc$(shifter) equipment.offhand

$data modify storage snc$(shifter) Inventory set value []
$data modify storage snc$(shifter) equipment set value {}

item replace entity @s inventory.18 from block ~ ~3 ~ container.0
item replace entity @s inventory.19 from block ~ ~3 ~ container.1
item replace entity @s inventory.20 from block ~ ~3 ~ container.2
item replace entity @s inventory.21 from block ~ ~3 ~ container.3
item replace entity @s inventory.22 from block ~ ~3 ~ container.4
item replace entity @s inventory.23 from block ~ ~3 ~ container.5
item replace entity @s inventory.24 from block ~ ~3 ~ container.6
item replace entity @s inventory.25 from block ~ ~3 ~ container.7
item replace entity @s inventory.26 from block ~ ~3 ~ container.8
item replace entity @s armor.feet from block ~ ~3 ~ container.9
item replace entity @s armor.legs from block ~ ~3 ~ container.10
item replace entity @s armor.chest from block ~ ~3 ~ container.11
execute if score $titan_marks_time config matches 0 run item replace entity @s armor.head from block ~ ~3 ~ container.12
item replace entity @s weapon.offhand from block ~ ~3 ~ container.13

setblock ~ ~2 ~ air replace
setblock ~ ~3 ~ air replace