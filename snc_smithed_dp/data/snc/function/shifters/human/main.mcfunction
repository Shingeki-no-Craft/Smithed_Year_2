## Is shifter is not added again it means the player is not a shifter anymore, then it has to be killed
tag @s remove shifter
##### HOW TO CREATE A SHIFTER #####
# Timer
execute if score @s shifter_vars matches 1 run function snc:shifters/human/timer/main with storage minecraft:cart
execute if score @s shifter_vars matches 2 run function snc:shifters/human/timer/main with storage minecraft:colossal
execute if score @s shifter_vars matches 3 run function snc:shifters/human/timer/main with storage minecraft:attack
execute if score @s shifter_vars matches 4 run function snc:shifters/human/timer/main with storage minecraft:beast
execute if score @s shifter_vars matches 5 run function snc:shifters/human/timer/main with storage minecraft:armor
execute if score @s shifter_vars matches 6 run function snc:shifters/human/timer/main with storage minecraft:jaw
execute if score @s shifter_vars matches 7 run function snc:shifters/human/timer/main with storage minecraft:female

## Removes shifter and kills the user, generally used when the player used cheats, was offline during the Curse of Ymir
execute if entity @s[tag=!shifter] run function snc:shifters/human/remove

## Shifters player controler
execute if entity @s[tag=transform] run function snc:shifters/function/unique {"pre":"function snc:shifters/mobs/controller with storage minecraft:","post":""}