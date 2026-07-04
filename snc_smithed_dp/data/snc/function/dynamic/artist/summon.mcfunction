kill 092423d9-99d5-4645-a78c-3980e33c4e07
kill e404e3ce-133c-41d0-bfe3-2e2c3bb9f981
kill 569a0219-9f55-4260-85ec-575280149790

#Mannequin
#UUID: 092423d9-99d5-4645-a78c-3980e33c4e07
summon mannequin -60.5 72 98.5 {UUID: [153363417,-1714076091,-1483982464,-482587129], Tags:["summit.dynamic", "summit.booth_entity.snc", "snc.entity.mikka"],immovable:1b, hide_description:1b, profile:{name:"Mikka", model:wide}, Invulnerable:1b}

#Text Display
#UUID: e404e3ce-133c-41d0-bfe3-2e2c3bb9f981
summon minecraft:text_display -60.5 74.0625 98.5 {UUID: [-469441586,322716112,-1075630548,1002043777], Tags:["summit.static", "summit.booth_entity.snc", "snc.entity.mikka.text"], alignment: "center", background: 1073741824, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {"text":"[NPC] ","extra":[{"text":"mikka","color":"light_purple"}],"color":"yellow"}, text_opacity: -1b}

#Interaction
#UUID: 569a0219-9f55-4260-85ec-575280149790
summon interaction -60.5 72 98.5 {UUID: [1452933657,-1621802400,-2048108718,-2146134128], Tags:["summit.static", "summit.booth_entity.snc", "snc.interaction.mikka"], height: 1.875f, response: true}