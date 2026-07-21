#tellraw @a {score:{name:"@s", objective:"snc.animation_jump.zwei"}}
#execute as @a[distance=..7] run tp @s ~ ~ ~ facing entity @n[tag=snc.entity.zwei]
execute if score @s snc.animation_jump.zwei matches 0 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 .85
execute if score @s snc.animation_jump.zwei matches 0 run particle minecraft:cloud -64 81 97 1 0 1 0.4 64
execute if score @s snc.animation_jump.zwei matches 0 run particle minecraft:tinted_leaves{color:[0.024,0.369,0.000,1.0]} -64 81 99 1 1 1 0.4 128
execute if score @s snc.animation_jump.zwei matches 0 run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.9
execute if score @s snc.animation_jump.zwei matches 0 run scoreboard players set @a[distance=..16] snc.earthquake 16

#Model
execute if score @s snc.animation_jump.zwei matches 0 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/1"
execute if score @s snc.animation_jump.zwei matches 3 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/2"
execute if score @s snc.animation_jump.zwei matches 6 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/3"
execute if score @s snc.animation_jump.zwei matches 9 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/4"
execute if score @s snc.animation_jump.zwei matches 12 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/5"
execute if score @s snc.animation_jump.zwei matches 16 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/6"

#Movement
execute if score @s snc.animation_jump.zwei matches 0 run tp @s ^-1.1 ^0.4 ^
execute if score @s snc.animation_jump.zwei matches 2 run tp @s ^-1.2 ^0.6 ^
execute if score @s snc.animation_jump.zwei matches 4 run tp @s ^-1.2 ^0.5 ^
execute if score @s snc.animation_jump.zwei matches 6 run tp @s ^-1.4 ^0.3 ^
execute if score @s snc.animation_jump.zwei matches 8 run tp @s ^-0.9 ^ ^
execute if score @s snc.animation_jump.zwei matches 10 run tp @s ^-0.9 ^-0.3 ^
execute if score @s snc.animation_jump.zwei matches 12 run tp @s ^-0.5 ^-0.6 ^
execute if score @s snc.animation_jump.zwei matches 14 run tp @s ^-0.9 ^-0.5 ^
execute if score @s snc.animation_jump.zwei matches 16 run tp @s ^-0.5 ^-0.4 ^

#Reset
scoreboard players add @s snc.animation_jump.zwei 1
execute if score @s snc.animation_jump.zwei matches 39 run rotate @s 90 0
execute if score @s snc.animation_jump.zwei matches 40 run data merge entity @s {teleport_duration:59}
execute if score @s snc.animation_jump.zwei matches 41 run tp @s -63.5625 81.5 94.625

execute if score @s snc.animation_jump.zwei matches 100 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/idle/1"
execute if score @s snc.animation_jump.zwei matches 100 run rotate @s -90 0

execute if score @s snc.animation_jump.zwei matches 1200.. run scoreboard players reset @s snc.animation_jump.zwei