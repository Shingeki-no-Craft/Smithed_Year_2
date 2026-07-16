execute on vehicle run rotate @s ~ ~
execute on vehicle at @s rotated ~ 0 run function snc:logic/motion/generic {"score":"female_vars","strength":0.025, "unstoppable":"true"}
execute on vehicle run attribute @s minecraft:scale base set 3.4
## Start combo
#scoreboard players set combo_punch female_vars -1