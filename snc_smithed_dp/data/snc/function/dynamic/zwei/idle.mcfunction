execute unless score @s snc.animation_idle.zwei matches 0..250000 run scoreboard players set @s snc.animation_idle.zwei 40

execute if score @s snc.animation_idle.zwei matches 40 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/idle/1"
execute if score @s snc.animation_idle.zwei matches 35 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/idle/2"
execute if score @s snc.animation_idle.zwei matches 23 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/idle/3"
execute if score @s snc.animation_idle.zwei matches 15 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/idle/2"
execute if score @s snc.animation_idle.zwei matches 7 run data modify entity @s item.components.minecraft:item_model set value "snc:dynamic/zwei/idle/1"

execute as @s[scores={snc.animation_idle.zwei=1..}] run scoreboard players remove @s snc.animation_idle.zwei 1
execute as @s[scores={snc.animation_idle.zwei=0}] run scoreboard players reset @s snc.animation_idle.zwei
execute unless score @s snc.animation_idle.zwei matches 1.. run scoreboard players set @s snc.animation_idle.zwei 40