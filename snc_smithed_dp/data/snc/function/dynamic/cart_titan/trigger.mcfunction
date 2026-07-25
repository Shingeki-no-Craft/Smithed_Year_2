scoreboard players reset $cart_travel snc.wait
execute as @n[type=happy_ghast, tag=snc.entity.cart_ghast] on passengers run scoreboard players add $riders.check snc.cart 1

playsound minecraft:block.note_block.trumpet master @a ~ ~ ~ 1 1

execute if score $riders.check snc.cart matches 1.. as @n[type=minecraft:item_display,tag=animated_java.cart.root] run function snc:dynamic/cart_titan/jump
execute if score $riders.check snc.cart matches 1.. on passengers on passengers run title @s subtitle [{"color":"#FF55FF","text":"W",bold:true},{"color":"#FF99FF","text":"O"},{"color":"#FFDDFF","text":"O"},{"color":"#FFDDFF","text":"M"},{"color":"#FF55FF","text":"P"}]
execute if score $riders.check snc.cart matches 1.. on passengers on passengers run title @s title {text:"\uE101", font:"snc:gui"}

execute if score $riders.check snc.cart matches 1.. on passengers on passengers run advancement grant @s only summit.sticker_book:snc/cart


execute if score $riders.check snc.cart matches 1.. run scoreboard players reset $riders.check snc.cart