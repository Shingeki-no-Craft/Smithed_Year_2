execute as @s[type=player,tag=!snc.titan] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
$damage @s[distance=..$(damage_step),tag=!snc.titan] $(damage_step) minecraft:cramming
$effect give @s[distance=..$(damage_step),tag=hurtbox] unluck 1 0 true