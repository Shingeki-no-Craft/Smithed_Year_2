## Global
scoreboard players reset $cart snc.wait
scoreboard players add $stage snc.cart 1

## Jump to destination location

# First run
execute if score $stage snc.cart matches 1 run rotate @s 247.5 0
execute if score $stage snc.cart matches 1 run scoreboard players set $cart snc.wait 3
execute if score $stage snc.cart matches 1 if score $hange snc.cart matches 1 run scoreboard players add $cart snc.wait 35
execute if score $stage snc.cart matches 1 run function animated_java:cart/animations/walk/play_exclusive

# Second run
execute if score $stage snc.cart matches 2 run function animated_java:cart/animations/jump_start/play
execute if score $stage snc.cart matches 2 run scoreboard players set $cart snc.wait 10

# Third run
execute if score $stage snc.cart matches 3 run playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 3 1
execute if score $stage snc.cart matches 3 run function snc:dynamic/cart_titan/teleport_travel

# Fourth run
execute if score $stage snc.cart matches 4 on passengers if entity @s[type=happy_ghast] on passengers run ride @s dismount
execute if score $stage snc.cart matches 4 if score $hange snc.cart matches 1 run playsound entity.villager.ambient master @a[tag=snc.talked_to.hange] ~ ~ ~ 3 2
execute if score $stage snc.cart matches 4 if score $hange snc.cart matches 1 run tellraw @a[tag=snc.talked_to.hange] ["",{"text":"[NPC]","color":"yellow"},{"text":" <Sqd L. Hange>","color":"dark_green"},{"text":" Say hello to my little "},{"text":"friend","color":"light_purple"},{"text":"! Isn't those teeth just "},{"text":"gorgeous","italic":true,"color":"red"},{"text":"? Let's see how much pain it takes to make it scream!"}]
#execute if score $stage snc.cart matches 4 if score $hange snc.cart matches 1 run scoreboard players add $cart snc.wait 70
execute if score $stage snc.cart matches 4 if score $hange snc.cart matches 1 run tag @a[tag=snc.talked_to.hange] remove snc.talked_to.hange
execute if score $stage snc.cart matches 4 run function animated_java:cart/animations/idle/play_exclusive
execute if score $stage snc.cart matches 4 run scoreboard players set $cart_travel snc.wait 70
execute if score $stage snc.cart matches 4 run scoreboard players set $cart snc.wait 30

## Return to summon location

# Fifth run
execute if score $stage snc.cart matches 5 run rotate @s ~180 0
execute if score $stage snc.cart matches 5 run scoreboard players set $cart snc.wait 40
execute if score $stage snc.cart matches 5 run function animated_java:cart/animations/walk/play_exclusive

#Sixth run
execute if score $stage snc.cart matches 6 at 1751e58c-0f26-4ef5-bf2f-0556b7f66581 run playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 3 1
execute if score $stage snc.cart matches 6 run function snc:dynamic/cart_titan/teleport_return

execute if score $stage snc.cart matches 7 if score $hange snc.cart matches 1 run scoreboard players reset $hange snc.cart
execute if score $stage snc.cart matches 7 run function animated_java:cart/animations/walk/play_exclusive
execute if score $stage snc.cart matches 7 on passengers if entity @s[type=happy_ghast] on passengers run ride @s dismount
execute if score $stage snc.cart matches 7 at @s run rotate @s -90 0
execute if score $stage snc.cart matches 7 run scoreboard players set $cart snc.wait 40

execute if score $stage snc.cart matches 8 run function animated_java:cart/animations/idle/play_exclusive

# Last run
execute if score $stage snc.cart matches 8 run scoreboard players reset $cart snc.wait
execute if score $stage snc.cart matches 8 run scoreboard players reset $stage snc.cart