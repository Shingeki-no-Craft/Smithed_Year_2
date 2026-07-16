effect give @s absorption 20 0 true
clear @s
execute on vehicle on passengers if entity @s[tag=animated_java.female.root] run function animated_java:female/animations/berserk_start/play_exclusive
execute on vehicle on passengers run function snc:shifters/mobs/hardening
tag @a remove snc.female.swing
execute on vehicle run effect give @s slowness 3 127 true
execute on vehicle run attribute @s minecraft:scale base set 4
particle minecraft:cloud ~ ~ ~ 1 3 1 1 512 force
playsound minecraft:snc.shifters.steam player @a ~ ~ ~ 4 1
scoreboard players set state female_vars 1
scoreboard players set $energy female_vars 3600
scoreboard players set $berserk female_vars 0
return 1