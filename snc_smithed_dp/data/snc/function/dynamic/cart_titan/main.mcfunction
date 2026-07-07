execute if score $stage snc.cart matches 1.. if score $cart snc.wait matches 1.. run scoreboard players remove $cart snc.wait 1
execute if score $stage snc.cart matches 1.. if score $cart snc.wait matches 0 run function snc:dynamic/cart_titan/jump
execute if score $stage snc.cart matches 3 if score $jump_tick snc.cart matches ..19 run function snc:dynamic/cart_titan/teleport_travel
execute if score $stage snc.cart matches 6 if score $jump_tick snc.cart matches ..19 run function snc:dynamic/cart_titan/teleport_return

#Init
execute if score $cart_travel snc.wait matches 1.. run scoreboard players remove $cart_travel snc.wait 1
execute if score $cart_travel snc.wait matches 1..100 on passengers if entity @s[type=happy_ghast] on passengers run title @s times 0 40 20
execute if score $cart_travel snc.wait matches 1..100 on passengers if entity @s[type=happy_ghast] on passengers run title @s subtitle {"text":"Departing in...", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 81..100 on passengers if entity @s[type=happy_ghast] on passengers run title @s title {"text":"5", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 100 run playsound block.note_block.bit master @a ~ ~ ~ 4 0.75
execute if score $cart_travel snc.wait matches 61..80 on passengers if entity @s[type=happy_ghast] on passengers run title @s title {"text":"4", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 80 run playsound block.note_block.bit master @a ~ ~ ~ 4 0.75
execute if score $cart_travel snc.wait matches 41..60 on passengers if entity @s[type=happy_ghast] on passengers run title @s title {"text":"3", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 60 run playsound block.note_block.bit master @a ~ ~ ~ 4 0.75
execute if score $cart_travel snc.wait matches 21..40 on passengers if entity @s[type=happy_ghast] on passengers run title @s title {"text":"2", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 40 run playsound block.note_block.bit master @a ~ ~ ~ 4 0.75
execute if score $cart_travel snc.wait matches 1..20 on passengers if entity @s[type=happy_ghast] on passengers run title @s title {"text":"1", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 20 run playsound block.note_block.bit master @a ~ ~ ~ 4 1.5
execute if score $cart_travel snc.wait matches 0 run function snc:dynamic/cart_titan/trigger