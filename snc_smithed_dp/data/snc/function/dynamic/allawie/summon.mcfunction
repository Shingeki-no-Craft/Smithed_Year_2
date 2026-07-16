function snc:dynamic/allawie/kill

#Mannequin
summon mannequin -69.5 72 108.5 {Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.npc", "snc.entity.allawie"],immovable:1b, hide_description:1b, profile:{name:"Allawie", model:wide}, Invulnerable:1b, attributes:[{id:"scale", base:.9}]}

#Text Display
summon minecraft:text_display -69.5 73.9 108.5 {Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.allawie", "snc.entity.allawie.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: [{"text":"Allawie","color":"dark_purple"},{"text":"\n[NPC]","color":"yellow"}], text_opacity: -1b}

#Interaction
summon interaction -69.5 72 108.5 {Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.allawie", "snc.interaction.allawie"], height: 1.875f, response: true}