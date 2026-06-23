$attribute @s block_interaction_range base set $(block_range)
attribute @s block_break_speed base set 2.5

## Farm
execute if score @s shifter_vars matches 1 if score #farm cart_vars matches 1.. positioned ~ ~-2 ~ rotated ~ 0 run function snc:shifters/utility/farm/dirt
execute if score @s shifter_vars matches 1 if score #farm cart_vars matches 2.. run scoreboard players remove #farm cart_vars 1
execute if score @s shifter_vars matches 1 if score #farm cart_vars matches ..-2 run scoreboard players add #farm cart_vars 1

## Harvest
$execute if score @s shifter_vars matches 1 if score #harvest cart_vars matches 1.. on vehicle at @s positioned ~ ~.5 ~ run function snc:shifters/utility/harvest {"shifter":$(shifter)}
execute if score @s shifter_vars matches 1 if score #harvest cart_vars matches 2.. run scoreboard players remove #harvest cart_vars 1
execute if score @s shifter_vars matches 1 if score #harvest cart_vars matches ..-2 run scoreboard players add #harvest cart_vars 1

scoreboard players operation @s snc.ender += @s snc.chest
scoreboard players operation @s snc.ender += @s snc.barrel
scoreboard players operation @s snc.ender += @s snc.shulker
scoreboard players operation @s snc.ender += @s snc.trap

execute if score @s snc.ender matches 1.. anchored eyes positioned ^ ^ ^1 run function snc:shifters/human/inventory/container_check