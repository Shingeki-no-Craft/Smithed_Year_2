execute on vehicle on passengers if entity @s[tag=snc.titan] run function snc:shifters/mobs/female/head {"frame":2, "rotate":0}

execute on vehicle on passengers if entity @s[tag=snc.titan] on vehicle at @s rotated ~ -2 run function snc:logic/motion/generic {"score":"female_vars","strength":0.015, "unstoppable":"false"}
execute on vehicle run attribute @s minecraft:scale base set 4
execute on vehicle run effect give @s slowness 4 127 true