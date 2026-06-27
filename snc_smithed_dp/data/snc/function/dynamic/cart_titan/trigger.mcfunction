scoreboard players reset $cart_travel snc.wait
execute as 6a75984c-ec7a-48ae-a6a1-f28d27033215 on passengers run scoreboard players add $riders.check snc.cart 1

execute if score $riders.check snc.cart matches 1.. run function snc:dynamic/cart_titan/jump
execute if score $riders.check snc.cart matches 1.. run scoreboard players reset $riders.check snc.cart