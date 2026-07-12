#kill a075e98e-8151-44af-ae49-0046616e666f
kill 01964247-3b78-4c28-a7c1-0046616e666f
kill ffd41588-0bd7-4555-8436-0046616e666f

#Mannequin
#UUID: a075e98e-8151-44af-ae49-0046616e666f
summon mannequin -39.5 87 102.5 {UUID: [-1602885234,-2125380433,-1370947514,1634625135], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.npc", "snc.entity.fanfo"],immovable:1b, hide_description:1b, profile:{name:"FanfoYT", model:slim}, Invulnerable:1b}

#Text Display
#UUID: 01964247-3b78-4c28-a7c1-0046616e666f
summon minecraft:text_display -39.5 89.0625 102.5 {UUID: [26624583,997739560,-1480523706,1634625135], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.fanfo.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: [{"text":"Fanfo","color":"gold"},{"text":"\n[NPC]","color":"yellow"}], text_opacity: -1b}

#Interaction
#UUID: ffd41588-0bd7-4555-8436-0046616e666f
summon interaction -39.5 87 102.5 {UUID: [-2878072,198657365,-2076835770,1634625135], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.fanfo"], height: 1.875f, response: true}