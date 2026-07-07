# Start Loop
scoreboard players add $jump_tick snc.cart 1
execute if score $jump_tick snc.cart matches 1 run function animated_java:cart/animations/jump_mid/play_exclusive

# Loop
execute if score $jump_tick snc.cart matches 1 run teleport @s ~-1.25 65.8 ~0.5
execute if score $jump_tick snc.cart matches 2 run teleport @s ~-1.25 66.7 ~0.5
execute if score $jump_tick snc.cart matches 3 run teleport @s ~-1.25 67.4 ~0.5
execute if score $jump_tick snc.cart matches 4 run teleport @s ~-1.25 68.0 ~0.5
execute if score $jump_tick snc.cart matches 5 run teleport @s ~-1.25 68.4 ~0.5
execute if score $jump_tick snc.cart matches 6 run teleport @s ~-1.25 68.7 ~0.5
execute if score $jump_tick snc.cart matches 7 run teleport @s ~-1.25 68.9 ~0.5
execute if score $jump_tick snc.cart matches 8..9 run teleport @s ~-1.25 69.0 ~0.5
execute if score $jump_tick snc.cart matches 10 run teleport @s ~-1.25 68.9 ~0.5
execute if score $jump_tick snc.cart matches 11 run teleport @s ~-1.25 68.7 ~0.5
execute if score $jump_tick snc.cart matches 12 run teleport @s ~-1.25 68.4 ~0.5
execute if score $jump_tick snc.cart matches 13 run teleport @s ~-1.25 68.0 ~0.5
execute if score $jump_tick snc.cart matches 14 run teleport @s ~-1.25 67.4 ~0.5
execute if score $jump_tick snc.cart matches 15 run teleport @s ~-1.25 66.7 ~0.5
execute if score $jump_tick snc.cart matches 16 run teleport @s -52.5 64.9 108.5

# End Loop
execute if score $jump_tick snc.cart matches 16.. run function animated_java:cart/animations/jump_end/play_exclusive
execute if score $jump_tick snc.cart matches 16.. run scoreboard players set $cart snc.wait 12
execute if score $jump_tick snc.cart matches 16.. run scoreboard players reset $jump_tick snc.cart