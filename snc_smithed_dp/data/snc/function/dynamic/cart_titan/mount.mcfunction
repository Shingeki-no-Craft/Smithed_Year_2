advancement revoke @s only snc:cart_titan
stopsound @s

execute as @n[type=happy_ghast, tag=snc.entity.cart_ghast] on passengers run scoreboard players add $riders snc.cart 1

execute unless score $riders snc.cart matches 4.. run ride @s mount @n[type=happy_ghast, tag=snc.entity.cart_ghast]
execute unless score $riders snc.cart matches 4.. unless score $stage snc.cart matches 1.. run scoreboard players set $cart_travel snc.wait 100

scoreboard players reset $riders snc.cart