#kill 7dbe6c10-a52a-480d-936c-005a61626174
kill 1c9ab409-a824-4354-a40e-005a61626174
kill ae3322e9-34af-4bbe-9d44-005a61626174

#Mannequin
#UUID: 7dbe6c10-a52a-480d-936c-005a61626174
summon mannequin -39.5 87 115.5 {UUID: [2109631504,-1523955699,-1821638566,1633837428], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.zabat"],immovable:1b, hide_description:1b, profile:{name:"zabatZabat", model:wide}, Invulnerable:1b}

#Text Display
#UUID: 1c9ab409-a824-4354-a40e-005a61626174
summon minecraft:text_display -39.5 89.0625 115.5 {UUID: [479900681,-1474018476,-1542586278,1633837428], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.zabat.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {"text":"[NPC] ","extra":[{"text":"Zabat","color":"light_purple"}],"color":"yellow"}, text_opacity: -1b}

#Interaction
#UUID: ae3322e9-34af-4bbe-9d44-005a61626174
summon interaction -39.5 87 115.5 {UUID: [-1372380439,883903422,-1656487846,1633837428], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.zabat"], height: 1.875f, response: true}