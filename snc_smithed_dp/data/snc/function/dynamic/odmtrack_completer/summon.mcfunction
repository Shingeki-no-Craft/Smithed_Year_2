#kill bca20b81-f429-4fb2-a69f-46b5b9954176
kill ae65e579-3b56-436d-98af-d37d8281fd7a

#Mannequin
#UUID: bca20b81-f429-4fb2-a69f-46b5b9954176
summon mannequin -5.5 69 91.5 {UUID: [-1130230911,-198619214,-1499511115,-1181400714], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.odmtrack_completer"],immovable:1b, hide_description:1b, profile:{name: "SkullHPT", model:wide}, Invulnerable:1b, CustomNameVisible:1b,hide_description:false,CustomName:{"text":"TL. Skull","color":"dark_green"},description:{text:"[NPC]", color:yellow}}

item replace entity bca20b81-f429-4fb2-a69f-46b5b9954176 armor.chest with iron_chestplate[minecraft:equippable={slot: "chest", asset_id: "snc:scout"}]
item replace entity bca20b81-f429-4fb2-a69f-46b5b9954176 armor.legs with iron_leggings[minecraft:equippable={slot: "legs", asset_id: "snc:scout"}]
item replace entity bca20b81-f429-4fb2-a69f-46b5b9954176 armor.feet with iron_boots[minecraft:equippable={slot: "feet", asset_id: "snc:scout"}]
execute as bca20b81-f429-4fb2-a69f-46b5b9954176 run function snc:api/item_replace/military/scouts/odm/gas_trigger {"slot": "weapon.mainhand", "count": 1}
execute as bca20b81-f429-4fb2-a69f-46b5b9954176 run function snc:api/item_replace/military/scouts/odm/gear {"slot": "weapon.offhand", "count": 1}

#Interaction
#UUID: ae65e579-3b56-436d-98af-d37d8281fd7a
summon interaction -5.5 69 91.5 {UUID: [-1369053831,995509101,-1733307523,-2105410182], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.odmtrack_completer"], height: 1.875f, response: true}