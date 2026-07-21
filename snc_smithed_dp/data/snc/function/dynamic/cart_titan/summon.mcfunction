execute as 1751e58c-0f26-4ef5-bf2f-0556b7f66581 run function animated_java:cart/remove/this
kill 6a75984c-ec7a-48ae-a6a1-f28d27033215
kill ce0e4805-ce45-4659-b52e-f829826811cd

#UUID: 1751e58c-0f26-4ef5-bf2f-0556b7f66581
execute positioned -52.5 64.9 108.5 facing -33 64.5 108 run function animated_java:cart/summon {args: {animation:idle, start_animation: true}}
execute as @n[type=minecraft:item_display,tag=animated_java.cart.root] on passengers run data merge entity @s {teleport_duration:40}
#UUID: 6a75984c-ec7a-48ae-a6a1-f28d27033215
execute positioned -52.5 65.0 108 run summon happy_ghast ~ ~ ~ {UUID: [1786091596,-327530322,-1499336051,654520853], Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["summit.dynamic","summit.booth_entity.snc","snc.entity.cart_ghast"],active_effects:[{id:invisibility,duration:-1,show_particles:0b}],attributes:[{id:scale,base:0.7f}]}
ride @n[type=happy_ghast, tag=snc.entity.cart_ghast] mount @n[type=minecraft:item_display,tag=animated_java.cart.root]

#UUID: ce0e4805-ce45-4659-b52e-f829826811cd
execute positioned -52.5 65.0 108 run summon interaction ~ ~ ~ {UUID: [-837924859,-834320807,-1255213015,-2107108915], Tags:["summit.dynamic","summit.booth_entity.snc","snc.interaction.cart_titan"], width: 5.1875f, height: 3.2f}
ride @n[type=interaction, tag=snc.interaction.cart_titan] mount @n[type=minecraft:item_display,tag=animated_java.cart.root]