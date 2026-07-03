function animated_java:female/animations/swing_mid_loop/play_exclusive
execute on vehicle run effect give @s slowness 1 6 true
execute on vehicle run attribute @s minecraft:scale base set 4
scoreboard players set state female_vars 19