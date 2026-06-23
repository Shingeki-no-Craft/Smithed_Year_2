tag @s add snc.inherit
##### HOW TO CREATE A SHIFTER #####
# Transfer Main
execute if score @s shifter_vars matches 1 as @p[distance=.1..20,tag=consume] unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars 1
execute if score @s shifter_vars matches 2 as @p[distance=.1..20,tag=consume] unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars 2
execute if score @s shifter_vars matches 3 as @p[distance=.1..20,tag=consume] unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars 3
execute if score @s shifter_vars matches 4 as @p[distance=.1..20,tag=consume] unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars 4
execute if score @s shifter_vars matches 5 as @p[distance=.1..20,tag=consume] unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars 5
execute if score @s shifter_vars matches 6 as @p[distance=.1..20,tag=consume] unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars 6
execute if score @s shifter_vars matches 7 as @p[distance=.1..20,tag=consume] unless score @s shifter_vars matches 1.. run scoreboard players set @s shifter_vars 7
# Transfer Sub-Titan
execute if score @s cart_vars matches 1 run function snc:shifters/transfer/remove/player {"shifter":"cart"}
execute if score @s colossal_vars matches 1 run function snc:shifters/transfer/remove/player {"shifter":"colossal"}
execute if score @s attack_vars matches 1 run function snc:shifters/transfer/remove/player {"shifter":"attack"}
execute if score @s beast_vars matches 1 run function snc:shifters/transfer/remove/player {"shifter":"beast"}
execute if score @s armor_vars matches 1 run function snc:shifters/transfer/remove/player {"shifter":"armor"}
execute if score @s jaw_vars matches 1 run function snc:shifters/transfer/remove/player {"shifter":"jaw"}
execute if score @s female_vars matches 1 run function snc:shifters/transfer/remove/player {"shifter":"female"}

execute as @p[distance=..20,tag=consume] run function snc:titans/remove_tags