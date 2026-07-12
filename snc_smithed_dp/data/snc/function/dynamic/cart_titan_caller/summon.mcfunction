#kill e65a7129-0763-4be4-b26d-22f781dc0145
kill c293b800-3a7f-4418-a5ff-1f61567ac1bc
kill 87ed7bb5-3247-420a-b39e-137d9942abb2

#Mannequin
#UUID: e65a7129-0763-4be4-b26d-22f781dc0145
summon mannequin -27.5 64 95.5 {UUID: [-430280407,123948004,-1301470473,-2116288187], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.npc", "snc.entity.cart_titan_caller"],immovable:1b, hide_description:1b, profile:{name:"Bombface68", model:slim}, Invulnerable:1b, attributes:[{id:"scale", base:0.9}]}


item replace entity e65a7129-0763-4be4-b26d-22f781dc0145 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity e65a7129-0763-4be4-b26d-22f781dc0145 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity e65a7129-0763-4be4-b26d-22f781dc0145 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]

execute as e65a7129-0763-4be4-b26d-22f781dc0145 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}
item modify entity e65a7129-0763-4be4-b26d-22f781dc0145 weapon.offhand snc:gear/store

#Text Display
#UUID: c293b800-3a7f-4418-a5ff-1f61567ac1bc
summon minecraft:text_display -27.5 65.9 95.5 {UUID: [-1030506496,981419032,-1510006943,1450885564], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.cart_titan_caller.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: [{"text":"Sqd L. Bomb","color":"dark_green"},{"text":"\n[NPC]","color":"yellow"}], text_opacity: -1b}

#Interaction
#UUID: 87ed7bb5-3247-420a-b39e-137d9942abb2
summon interaction -27.5 64 95.5 {UUID: [-2014479435,843530762,-1281485955,-1723683918], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.cart_titan_caller"], height: 1.875f, response: true}