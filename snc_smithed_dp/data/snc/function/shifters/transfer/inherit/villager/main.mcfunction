## It was a villager!
tag @s add snc.inherit
#CanPickUpLoot:1b,
summon villager ~ ~5 ~ {Tags:["consume"],active_effects:[{id:"minecraft:resistance",amplifier:1,duration:-1,show_particles:0b}]}
##### HOW TO CREATE A SHIFTER #####
# Transfer Main
execute if score @s shifter_vars matches 1 run scoreboard players set @n[tag=consume,type=villager] shifter_vars -1
execute if score @s shifter_vars matches 2 run scoreboard players set @n[tag=consume,type=villager] shifter_vars -2
execute if score @s shifter_vars matches 3 run scoreboard players set @n[tag=consume,type=villager] shifter_vars -3
execute if score @s shifter_vars matches 4 run scoreboard players set @n[tag=consume,type=villager] shifter_vars -4
execute if score @s shifter_vars matches 5 run scoreboard players set @n[tag=consume,type=villager] shifter_vars -5
execute if score @s shifter_vars matches 6 run scoreboard players set @n[tag=consume,type=villager] shifter_vars -6
execute if score @s shifter_vars matches 7 run scoreboard players set @n[tag=consume,type=villager] shifter_vars -7
# Transfter Passives
execute if score @s cart_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"cart"}
execute if score @s colossal_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"colossal"}
execute if score @s attack_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"attack"}
execute if score @s beast_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"beast"}
execute if score @s armor_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"armor"}
execute if score @s jaw_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"jaw"}
execute if score @s female_vars matches 1 run function snc:shifters/transfer/remove/villager {"shifter":"female"}

#execute as @n[type=villager,tag=consume] run function snc:shifters/transfer/get with storage minecraft:$(shifter)" 

#tag @n[tag=consume,type=villager] remove consume