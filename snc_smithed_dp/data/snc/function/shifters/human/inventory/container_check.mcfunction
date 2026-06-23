scoreboard players reset @s snc.ender
scoreboard players reset @s snc.chest
scoreboard players reset @s snc.barrel
scoreboard players reset @s snc.shulker
scoreboard players reset @s snc.trap

execute if block ~ ~ ~ #snc:destroy/container run function snc:shifters/human/inventory/destroy
execute unless block ~ ~ ~ #snc:destroy/container positioned ^ ^ ^1 run function snc:shifters/human/inventory/container_check