execute as @s[type=player,tag=!snc.titan] unless score @s earthquake matches 16.. run scoreboard players add @s earthquake 6
$damage @s[distance=..$(distance),tag=!snc.titan] $(damage) minecraft:cramming
$effect give @s[distance=..$(distance),tag=hurtbox] unluck 1 0 true