#kill 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7
kill 4234e740-8048-4fdf-adde-90546c74336c

#Mannequin
#UUID: 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7
summon mannequin -60.5 80 102.5 {UUID: [465027738,1538345671,-1919212277,1140845239], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.odm_giver"],immovable:1b, hide_description:1b, profile:{name:"Energy2468", model:wide}}

item replace entity 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]

execute as 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7 run function snc:api/item_replace/military/scouts/odm/gas_trigger {"slot": "weapon.mainhand", "count": 1}
execute as 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}

#Interaction
#UUID: 4234e740-8048-4fdf-adde-90546c74336c
summon interaction -60.5 80 102.5 {UUID: [1110763328,-2142744609,-1377922988,1819554668], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.interaction.odm_giver"], height: 1.875f, response: true}