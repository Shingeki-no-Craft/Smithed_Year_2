scoreboard players set state female_vars 5
scoreboard players set $fight female_vars 2
execute on vehicle run effect clear @s slowness
## Follow combo
#execute if score combo_punch attack_vars matches 1 on vehicle on passengers if entity @s[tag=animated_java.attack.root] run function snc:shifters/mobs/attack/animate/punch_2
#execute unless score combo_punch attack_vars matches 1 run scoreboard players set combo_punch attack_vars 0
