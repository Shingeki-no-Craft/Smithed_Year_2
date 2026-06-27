advancement revoke @s only snc:cart_titan
stopsound @s

execute as 6a75984c-ec7a-48ae-a6a1-f28d27033215 on passengers run scoreboard players add $riders snc.cart 1

execute unless score $riders snc.cart matches 4.. run ride @s mount 6a75984c-ec7a-48ae-a6a1-f28d27033215
execute unless score $riders snc.cart matches 4.. unless score $stage snc.cart matches 1.. run scoreboard players set $cart_travel snc.wait 100

scoreboard players reset $riders snc.cart