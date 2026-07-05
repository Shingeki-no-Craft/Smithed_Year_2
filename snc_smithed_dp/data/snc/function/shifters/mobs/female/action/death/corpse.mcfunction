execute unless score @s female_vars matches ..1200 if score $vanish female_vars matches 1 run scoreboard players set @s female_vars 2
execute unless score @s female_vars matches ..1200 if score $vanish female_vars matches 1 run scoreboard players reset $vanish female_vars

execute unless score @s female_vars matches ..1200 run scoreboard players set @s female_vars 1200

## Prevent 2 corpses at the same time
scoreboard players set $corpses female_vars 0
execute if score @s female_vars matches 1200 as @e[tag=shifter,tag=snc.shifter.female,tag=snc.dead] run scoreboard players add $corpses female_vars 1
execute if score $corpses female_vars matches 2.. as @e[tag=shifter,tag=snc.shifter.female,tag=snc.dead,limit=1,sort=arbitrary] run function snc:shifters/mobs/kill {"shifter":"female"}
execute if block ~ ~7 ~ air run tp ^ ^-.3 ^

execute if score @s female_vars matches 200.. run particle campfire_signal_smoke ^1.5 ^-2 ^ 2 3 2 .01 1 force

execute if score @s female_vars matches 1195 run data merge entity @s {Pose:{Head:[-45f,0f,0f]}}
execute if score @s female_vars matches 1190 run data merge entity @s {Pose:{Head:[-33f,0f,0f]}}
execute if score @s female_vars matches 1185 run data merge entity @s {Pose:{Head:[-22f,0f,0f]}}
execute if score @s female_vars matches 1180 run data merge entity @s {Pose:{Head:[-11f,0f,0f]}}
execute if score @s female_vars matches 1175 run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if score @s female_vars matches 1173 run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute if score @s female_vars matches 1172 run data merge entity @s {Pose:{Head:[40f,0f,0f]}}
execute if score @s female_vars matches 1170 run data merge entity @s {Pose:{Head:[65f,0f,0f]}}

## Change variant
execute if score @s female_vars matches 1100 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 1000 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 900 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 800 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 700 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 600 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 500 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 400 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 300 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay
execute if score @s female_vars matches 200 on passengers if entity @s[tag=animated_java.female.root] run function snc:shifters/mobs/female/action/death/decay

scoreboard players remove @s female_vars 1
execute if score @s female_vars matches 0 anchored eyes run particle minecraft:cloud ^ ^-4 ^-2 2 2 2 .2 500 force
execute if score @s female_vars matches 0 anchored eyes run playsound minecraft:snc.shifters.steam player @a ^ ^ ^ 2 1
execute if score @s female_vars matches 0 run function snc:shifters/mobs/kill {"shifter":"female"}