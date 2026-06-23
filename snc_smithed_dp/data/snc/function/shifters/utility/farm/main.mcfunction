advancement revoke @s only snc:shifters/cart/farm

execute if score #farm cart_vars matches -1 run function snc:shifters/utility/farm/enable
execute if score #farm cart_vars matches 1 run function snc:shifters/utility/farm/disable