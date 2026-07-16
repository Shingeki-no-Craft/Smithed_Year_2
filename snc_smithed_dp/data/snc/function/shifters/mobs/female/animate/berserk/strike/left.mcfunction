function animated_java:female/animations/berserk_leap_l/play_exclusive
scoreboard players set state female_vars 12
scoreboard players set $combo_ber female_vars -1

execute on vehicle run attribute @s minecraft:scale base set 2.3
execute on vehicle run effect give @s slowness 1 6 true

execute on vehicle at @s rotated ~-5.625 0 run function snc:logic/motion/generic {"score":"female_vars","strength":0.03, "unstoppable":"false"}
return 1