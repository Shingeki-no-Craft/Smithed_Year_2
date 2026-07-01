function animated_java:female/animations/strike_3/play_exclusive
scoreboard players set state female_vars 13
execute on vehicle run attribute @s minecraft:scale base set 3.45
execute on vehicle run effect give @s slowness 1 6 true

#execute on vehicle at @s rotated ~180 0 run function snc:logic/motion/generic {"score":"female_vars","strength":0.015, "unstoppable":"false"}