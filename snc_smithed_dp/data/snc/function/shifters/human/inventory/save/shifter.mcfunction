$data modify storage minecraft:$(shifter) Hotbar set value []
$execute unless items entity @s container.0 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:0b}]
$execute unless items entity @s container.1 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:1b}]
$execute unless items entity @s container.2 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:2b}]
$execute unless items entity @s container.3 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:3b}]
$execute unless items entity @s container.4 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:4b}]
$execute unless items entity @s container.5 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:5b}]
$execute unless items entity @s container.6 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:6b}]
$execute unless items entity @s container.7 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:7b}]
$execute unless items entity @s container.8 *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s Inventory[{Slot:8b}]

$execute unless items entity @s weapon.offhand *[custom_data~{atk_shifter:1b}|count~{max:0}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s equipment.offhand
$execute unless items entity @s armor.head minecraft:white_dye run data modify storage minecraft:$(shifter) Hotbar append from entity @s equipment.head
$execute unless items entity @s armor.chest mushroom_stew[custom_data~{snc_blank:true}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s equipment.chest
$execute unless items entity @s armor.legs mushroom_stew[custom_data~{snc_blank:true}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s equipment.legs
$execute unless items entity @s armor.feet mushroom_stew[custom_data~{snc_blank:true}] run data modify storage minecraft:$(shifter) Hotbar append from entity @s equipment.feet