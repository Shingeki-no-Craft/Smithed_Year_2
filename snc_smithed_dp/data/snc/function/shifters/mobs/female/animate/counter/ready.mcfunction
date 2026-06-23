function animated_java:female/animations/counter_ready/play
execute on vehicle run effect give @s slowness 1 6 true
execute on vehicle run attribute @s minecraft:scale base set 3.45
scoreboard players set #parry female_vars 1
scoreboard players set state female_vars 14