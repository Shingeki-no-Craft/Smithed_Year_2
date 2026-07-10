#kill bca20b81-f429-4fb2-a69f-46b5b9954176
kill fde5936c-fe78-4f87-bcfe-b61ffc5b565c
kill ae65e579-3b56-436d-98af-d37d8281fd7a

#Mannequin
#UUID: bca20b81-f429-4fb2-a69f-46b5b9954176
summon mannequin -5.5 69 91.5 {UUID: [-1130230911,-198619214,-1499511115,-1181400714], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.odmtrack_completer"],immovable:1b, profile:{name: "SkullHPT", model:wide}, Invulnerable:1b}

item replace entity bca20b81-f429-4fb2-a69f-46b5b9954176 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity bca20b81-f429-4fb2-a69f-46b5b9954176 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity bca20b81-f429-4fb2-a69f-46b5b9954176 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]
execute as bca20b81-f429-4fb2-a69f-46b5b9954176 run function snc:api/item_replace/military/scouts/odm/gas_trigger {"slot": "weapon.mainhand", "count": 1}
execute as bca20b81-f429-4fb2-a69f-46b5b9954176 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}

#Text Display
#UUID: fde5936c-fe78-4f87-bcfe-b61ffc5b565c
summon minecraft:text_display -5.5 71.0625 91.5 {UUID: [-35286164,-25669753,-1124157921,-61122980], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.odmtrack_completer.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: [{"text":"TL. Skull","color":"dark_green"},{"text":"\n[NPC] ","color":"yellow"}], text_opacity: -1b}

#Interaction
#UUID: ae65e579-3b56-436d-98af-d37d8281fd7a
summon interaction -5.5 69 91.5 {UUID: [-1369053831,995509101,-1733307523,-2105410182], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.odmtrack_completer"], height: 1.875f, response: true}