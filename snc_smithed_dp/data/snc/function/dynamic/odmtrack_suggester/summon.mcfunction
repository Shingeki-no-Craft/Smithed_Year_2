#kill dcf0ec5a-9ded-4a81-a6f5-039cb5740129
kill 0cf50cfd-6baf-4c47-81f9-0e3f1718d23e

#Mannequin
#UUID: dcf0ec5a-9ded-4a81-a6f5-039cb5740129
summon mannequin -18.5 65 107.5 {UUID: [-588190630,-1645393279,-1493892196,-1250688727], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.odmtrack_suggester"],immovable:1b, hide_description:1b, profile:{name: "RiflemanShaw", model:wide}, Invulnerable:1b,CustomNameVisible:1b,hide_description:false,CustomName:{"text":"Sld. Dano","color":"dark_green"},description:{text:"[NPC]", color:yellow}}

item replace entity dcf0ec5a-9ded-4a81-a6f5-039cb5740129 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity dcf0ec5a-9ded-4a81-a6f5-039cb5740129 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity dcf0ec5a-9ded-4a81-a6f5-039cb5740129 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]
execute as dcf0ec5a-9ded-4a81-a6f5-039cb5740129 run function snc:api/item_replace/military/scouts/odm/gas_trigger {"slot": "weapon.mainhand", "count": 1}
execute as dcf0ec5a-9ded-4a81-a6f5-039cb5740129 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}

#Interaction
#UUID: 0cf50cfd-6baf-4c47-81f9-0e3f1718d23e
summon interaction -18.5 65 107.5 {UUID: [217386237,1806650439,-2114384321,387502654], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.odmtrack_suggester"], height: 1.875f, response: true}