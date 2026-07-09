item replace entity @s armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity @s armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity @s armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]
execute as @s run function snc:api/item_replace/military/scouts/odm/gas_trigger {"slot": "container.0", "count": 1}
execute as @s run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}