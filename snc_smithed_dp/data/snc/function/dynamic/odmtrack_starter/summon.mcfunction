#kill 7b884c23-ec86-4532-8f0b-5a29dff19766
kill 0bd07835-cfff-430a-a4e9-d798ca03ca86

#Mannequin
#UUID: 7b884c23-ec86-4532-8f0b-5a29dff19766
summon mannequin -17.5 71 115.5 {UUID: [2072529955,-326744782,-1895081431,-537815194], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.odmtrack_starter"],immovable:1b, hide_description:1b, profile:{name: "HopeEllie", model:slim}, Invulnerable:1b,CustomNameVisible:1b,hide_description:false,CustomName:{"text":"Gen. Hope","color":"dark_green"},description:{text:"[NPC]", color:yellow}}

item replace entity 7b884c23-ec86-4532-8f0b-5a29dff19766 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity 7b884c23-ec86-4532-8f0b-5a29dff19766 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity 7b884c23-ec86-4532-8f0b-5a29dff19766 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]
execute as 7b884c23-ec86-4532-8f0b-5a29dff19766 run function snc:api/item_replace/military/scouts/odm/gas_trigger {"slot": "weapon.mainhand", "count": 1}
execute as 7b884c23-ec86-4532-8f0b-5a29dff19766 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}

#Interaction
#UUID: 0bd07835-cfff-430a-a4e9-d798ca03ca86
summon interaction -17.5 71 115.5 {UUID: [198211637,-805354742,-1528178792,-905721210], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.odmtrack_starter"], height: 1.875f, response: true}