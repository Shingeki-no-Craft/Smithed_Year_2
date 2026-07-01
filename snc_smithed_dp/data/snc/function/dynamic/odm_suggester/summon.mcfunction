#kill ebd5bffc-1df8-4465-a11b-b6955d24ad41
kill d310065c-2a81-4351-828f-c7fb5c48bcb6
kill 599fc608-8788-4078-9566-f6e8a352a640

#Mannequin
#UUID: ebd5bffc-1df8-4465-a11b-b6955d24ad41
summon mannequin -60.5 80 111.5 {UUID: [-338313220,502809701,-1592019307,1562684737], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.odm_suggester"],immovable:1b, hide_description:1b, profile:{texture:"snc:custom/mannequin/levi", model:wide}, Invulnerable:1b}

item replace entity ebd5bffc-1df8-4465-a11b-b6955d24ad41 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity ebd5bffc-1df8-4465-a11b-b6955d24ad41 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity ebd5bffc-1df8-4465-a11b-b6955d24ad41 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]
execute as ebd5bffc-1df8-4465-a11b-b6955d24ad41 run function snc:api/item_replace/military/scouts/odm/gas_trigger {"slot": "weapon.mainhand", "count": 1}
execute as ebd5bffc-1df8-4465-a11b-b6955d24ad41 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}

#Text Display
#UUID: d310065c-2a81-4351-828f-c7fb5c48bcb6
summon minecraft:text_display -60.5 82.0625 111.5 {UUID: [-753924516,713114449,-2104506373,1548270774], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.odm_suggestor.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {"text":"[NPC] ","extra":[{"text":"Capt. Levi","color":"dark_green"}],"color":"yellow"}, text_opacity: -1b}

#Interaction
#UUID: 599fc608-8788-4078-9566-f6e8a352a640
summon interaction -60.5 80 111.5 {UUID: [1503643144,-2021113736,-1788414232,-1554864576], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.odm_suggester"], height: 1.875f, response: true}