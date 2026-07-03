function animated_java:female/animations/swing_grab_cable/play_exclusive
execute on vehicle run effect give @s slowness 4 6 true
execute on vehicle run attribute @s minecraft:scale base set 4
scoreboard players set #parry female_vars 0
scoreboard players set #swing female_vars 0
scoreboard players set state female_vars 18