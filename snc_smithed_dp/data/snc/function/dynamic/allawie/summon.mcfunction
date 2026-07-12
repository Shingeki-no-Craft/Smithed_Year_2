#kill 67676767-6767-6767-6767-676767676767
kill 66666666-6666-6666-6666-666666666666
kill 77777777-7777-7777-7777-777777777777

#Mannequin
#UUID: 67676767-6767-6767-6767-676767676767
summon mannequin -69.5 72 108.5 {UUID: [1734829927,1734829927,1734829927,1734829927], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.npc", "snc.entity.allawie"],immovable:1b, hide_description:1b, profile:{name:"Allawie", model:wide}, Invulnerable:1b}

#Text Display
#UUID: 66666666-6666-6666-6666-666666666666
summon minecraft:text_display -69.5 74 108.5 {UUID: [1717986918,1717986918,1717986918,1717986918], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.allawie.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: [{"text":"Allawie","color":"dark_purple"},{"text":"\n[NPC]","color":"yellow"}], text_opacity: -1b}

#Interaction
#UUID: 77777777-7777-7777-7777-777777777777
summon interaction -69.5 72 108.5 {UUID: [2004318071,2004318071,2004318071,2004318071], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.allawie"], height: 1.875f, response: true}