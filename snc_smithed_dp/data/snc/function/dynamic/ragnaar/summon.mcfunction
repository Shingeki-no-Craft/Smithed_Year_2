#kill 3a9c4e11-825d-710f-936c-007261676e61
kill 1d8b442e-3b78-4c28-a7c1-007261676e61
kill be3a22e9-34af-4bbe-9d44-007261676e61

#Mannequin
#UUID: 3a9c4e11-825d-710f-936c-007261676e61
summon mannequin -57.5 85.5 107.5 {UUID: [983322129,-2107805425,-1821638542,1634168417], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.npc", "snc.entity.ragnaar"],immovable:1b, hide_description:1b, profile:{name:"B6_C", model:wide}, Invulnerable:1b, attributes:[{id:"scale", base:1.1}]}

item replace entity 3a9c4e11-825d-710f-936c-007261676e61 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity 3a9c4e11-825d-710f-936c-007261676e61 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity 3a9c4e11-825d-710f-936c-007261676e61 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]

execute as 3a9c4e11-825d-710f-936c-007261676e61 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}
item modify entity 3a9c4e11-825d-710f-936c-007261676e61 weapon.offhand snc:gear/store

#Text Display
#UUID: 1d8b442e-3b78-4c28-a7c1-007261676e61
summon minecraft:text_display -57.5 87.7 107.5 {UUID: [495666222,997739560,-1480523662,1634168417], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.ragnaar.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: [{"text":"Gen. Ragnaar","color":"dark_green"},{"text":"\n[NPC]","color":"yellow"}], text_opacity: -1b}

#Interaction
#UUID: be3a22e9-34af-4bbe-9d44-007261676e61
summon interaction -57.5 85.6 107.5 {UUID: [-1103486231,883903422,-1656487822,1634168417], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.ragnaar"], height: 1.875f, response: true}
