execute as @e at @s run function snc:ent/main

## SNC : Tick
scoreboard players add ticks clock 1
execute store result score time clock run time query minecraft:day
execute if score ticks clock matches 20 run function snc:seconds

## SNC : ODM Track
execute as @a[scores={snc.quest.odmtrack.stage=1..}] run function snc:dynamic/odmtrack_starter/get_value
execute as @a[scores={snc.quest.odmtrack.stage=1..}] at @s if entity @s[y=68,dy=-200] run function snc:dynamic/odmtrack_starter/fail

# --------------------------- [Dynamic - Zwei Jumpscare] --------------------------- #

execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 if score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/jump
execute as 3ffc9084-50a9-4616-bf2e-0c267db28467 unless score @s snc.animation_jump.zwei matches 1.. run function snc:dynamic/zwei/idle
execute if score $zwei.jumpscare snc.wait matches 1.. run scoreboard players remove $zwei.jumpscare snc.wait 1

#Trigger
execute unless score $zwei.jumpscare snc.wait matches 1.. at 3ffc9084-50a9-4616-bf2e-0c267db28467 if entity @p[x=-67.5, y=80, z=105.5,distance=..1.1] run function snc:dynamic/zwei/trigger

# --------------------------- [Dynamic - Attack Head] --------------------------- #

execute at 6c239941-3e1e-4e55-994c-91fccb41a01e if entity @p[x=-72.9375, y=80.625, z=108.4375,distance=..11] as @p[x=-72.9375, y=80.625, z=108.4375,distance=..11] run teleport 6c239941-3e1e-4e55-994c-91fccb41a01e ~ ~ ~ facing entity @s eyes

# --------------------------- [Dynamic - ODM NPCs] --------------------------- #

execute as ebd5bffc-1df8-4465-a11b-b6955d24ad41 at @s if entity @p[distance=..5] run teleport @s ~ ~ ~ facing entity @p
execute as 1bb7c29a-5bb1-4ac7-8d9b-250b43ffeab7 at @s if entity @p[distance=..5] run teleport @s ~ ~ ~ facing entity @p
execute as dcf0ec5a-9ded-4a81-a6f5-039cb5740129 at @s if entity @p[distance=..5] run teleport @s ~ ~ ~ facing entity @p
execute as 7b884c23-ec86-4532-8f0b-5a29dff19766 at @s if entity @p[distance=..5] run teleport @s ~ ~ ~ facing entity @p
execute as bca20b81-f429-4fb2-a69f-46b5b9954176 at @s if entity @p[distance=..5] run teleport @s ~ ~ ~ facing entity @p
execute as @a[scores={snc.wait.odmtrack=1..}] run scoreboard players remove @s snc.wait.odmtrack 1
execute as @a[scores={snc.wait.odmtrack=0}] run function snc:dynamic/odmtrack_starter/start_quest

# --------------------------- [Dynamic - Cart AJ] --------------------------- #

execute if score $stage snc.cart matches 1.. if score $cart snc.wait matches 1.. run scoreboard players remove $cart snc.wait 1
execute if score $stage snc.cart matches 1.. if score $cart snc.wait matches 0 run function snc:dynamic/cart_titan/jump
execute if score $stage snc.cart matches 3 if score $jump_tick snc.cart matches ..19 as 1751e58c-0f26-4ef5-bf2f-0556b7f66581 at @s run function snc:dynamic/cart_titan/teleport_travel
execute if score $stage snc.cart matches 6 if score $jump_tick snc.cart matches ..19 as 1751e58c-0f26-4ef5-bf2f-0556b7f66581 at @s run function snc:dynamic/cart_titan/teleport_return

#Init
execute if score $cart_travel snc.wait matches 1.. run scoreboard players remove $cart_travel snc.wait 1
execute if score $cart_travel snc.wait matches 60 as 6a75984c-ec7a-48ae-a6a1-f28d27033215 on passengers run title @s actionbar {"text":"Jumping in 3", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 40 as 6a75984c-ec7a-48ae-a6a1-f28d27033215 on passengers run title @s actionbar {"text":"Jumping in 2", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 20 as 6a75984c-ec7a-48ae-a6a1-f28d27033215 on passengers run title @s actionbar {"text":"Jumping in 1", "color":"light_purple"}
execute if score $cart_travel snc.wait matches 0 run function snc:dynamic/cart_titan/trigger

# --------------------------- [Dynamic - Entity] --------------------------- #