advancement revoke @s only snc:shifters/cart/harvest
execute unless score #harvest cart_vars matches -10.. run scoreboard players set #harvest cart_vars -1

execute if score #harvest cart_vars matches -1 run function snc:shifters/utility/harvest/enable
execute if score #harvest cart_vars matches 1 run function snc:shifters/utility/harvest/disable