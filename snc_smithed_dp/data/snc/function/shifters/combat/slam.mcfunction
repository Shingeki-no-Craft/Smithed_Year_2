execute as @s[type=player,tag=!transform] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
$damage @s[distance=..$(distance),tag=!transform] $(damage) minecraft:cramming
$effect give @s[distance=..$(distance),tag=hurtbox] unluck 1 0 true