execute on vehicle on passengers if entity @s[tag=transform] run function snc:shifters/mobs/female/head {"frame":3, "rotate":0}
execute unless score state female_vars matches 2 on vehicle at @s rotated ~180 -2 run function snc:logic/motion/generic {"score":"female_vars","strength":0.015, "unstoppable":"false"}
execute on vehicle run attribute @s minecraft:scale base set 3.2