## Transform
execute if score @s snc.transform matches 300 run effect give @s instant_health 2 2 true
execute if score @s snc.transform matches 300 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1
execute if score @s snc.transform matches 300 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s snc.transform matches 289 run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 1 1 force
execute if score @s snc.transform matches 289 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1
execute if score @s snc.transform matches 289 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s snc.transform matches 280 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1
execute if score @s snc.transform matches 280 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s snc.transform matches 273 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1.15
execute if score @s snc.transform matches 273 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force
execute if score @s snc.transform matches 266 run playsound minecraft:aot.heart master @s ~ ~ ~ 1 1.2
execute if score @s snc.transform matches 266 run particle minecraft:dust_color_transition{from_color:[1f, 0.941f, 0.098f],to_color:[1f, 1f, 1f], scale:1f} ~ ~1 ~ .3 .3 .3 .05 20 force

execute if score @s snc.transform matches 265 run playsound minecraft:aot.shifters.trigger master @a ~ ~ ~ 10 1
execute if score @s snc.transform matches 256..266 run function snc:shifters/human/trigger/main with storage snc:female

scoreboard players remove @s snc.transform 1