execute on vehicle run function snc:shifters/mobs/decay
scoreboard players add @s female_vars 1

particle minecraft:cloud ^ ^10 ^-2 1 2 1 .15 200 force
playsound minecraft:snc.shifters.steam player @a ^ ^10 ^-2 2 1
execute if score @s female_vars matches 1 run function animated_java:female/variants/skin_1/apply
execute if score @s female_vars matches 1 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/1"]
execute if score @s female_vars matches 2 run function animated_java:female/variants/skin_2/apply
execute if score @s female_vars matches 2 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/2"]
execute if score @s female_vars matches 3 run function animated_java:female/variants/skin_3/apply
execute if score @s female_vars matches 3 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/3"]
execute if score @s female_vars matches 4 run function animated_java:female/variants/skin_4/apply
execute if score @s female_vars matches 4 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/4"]
execute if score @s female_vars matches 5 run function animated_java:female/variants/skin_5/apply
execute if score @s female_vars matches 5 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/5"]
execute if score @s female_vars matches 6 run function animated_java:female/variants/skin_6/apply
execute if score @s female_vars matches 6 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/6"]
execute if score @s female_vars matches 7 run function animated_java:female/variants/skin_7/apply
execute if score @s female_vars matches 7 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/7"]
execute if score @s female_vars matches 8 run function animated_java:female/variants/skin_8/apply
execute if score @s female_vars matches 8 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/8"]
execute if score @s female_vars matches 9 run function animated_java:female/variants/skin_9/apply
execute if score @s female_vars matches 9 on vehicle if entity @s[type=armor_stand] run item replace entity @s armor.head with minecraft:white_dye[minecraft:item_model="snc:female/bite/decay/9"]