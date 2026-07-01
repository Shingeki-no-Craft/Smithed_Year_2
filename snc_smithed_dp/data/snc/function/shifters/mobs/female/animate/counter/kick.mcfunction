function animated_java:female/animations/counter_kick/play_exclusive
execute on vehicle run effect give @s slowness 1 6 true
execute on vehicle run attribute @s minecraft:scale base set 3.8
scoreboard players set #parry female_vars 0
scoreboard players set state female_vars 15