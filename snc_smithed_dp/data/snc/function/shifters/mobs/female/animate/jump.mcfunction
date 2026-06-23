function animated_java:female/animations/jump_init/play
scoreboard players set state female_vars 6
execute on vehicle run attribute @s minecraft:scale base set 3.8
execute on vehicle run effect give @s slowness 1 127 true