execute unless score @s snc.animation_jump.zwei matches 0..250000 run scoreboard players set @s snc.animation_jump.zwei 20

#execute as @a[distance=..7] at @s run tp @s ~ ~ ~ facing entity @n[tag=snc.entity.zwei]
execute if score @s snc.animation_jump.zwei matches 20 at @s run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 .85
execute if score @s snc.animation_jump.zwei matches 20 at @s run particle minecraft:cloud ~ ~.5 ~ 1 0 1 .05 10

execute if score @s snc.animation_jump.zwei matches 20 at @s run tp @s ^ ^0.4 ^-0.9
execute if score @s snc.animation_jump.zwei matches 20 at @s run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/1"
execute if score @s snc.animation_jump.zwei matches 17 at @s run tp @s ^ ^0.6 ^-1.4
execute if score @s snc.animation_jump.zwei matches 17 at @s run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/2"
execute if score @s snc.animation_jump.zwei matches 14 at @s run tp @s ^ ^0.3 ^-1.4
execute if score @s snc.animation_jump.zwei matches 14 at @s run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/3"
execute if score @s snc.animation_jump.zwei matches 11 at @s run tp @s ^ ^-0.3 ^-0.9
execute if score @s snc.animation_jump.zwei matches 11 at @s run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/4"
execute if score @s snc.animation_jump.zwei matches 8 at @s run tp @s ^ ^-0.6 ^-0.5
execute if score @s snc.animation_jump.zwei matches 8 at @s run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/5"
execute if score @s snc.animation_jump.zwei matches 4 at @s run tp @s ^ ^-0.4 ^-0.5
execute if score @s snc.animation_jump.zwei matches 4 at @s run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/attack/6"

execute as @s[scores={snc.animation_jump.zwei=1..}] run scoreboard players remove @s snc.animation_jump.zwei 1
execute as @s[scores={snc.animation_jump.zwei=0}] run scoreboard players reset @s snc.animation_jump.zwei