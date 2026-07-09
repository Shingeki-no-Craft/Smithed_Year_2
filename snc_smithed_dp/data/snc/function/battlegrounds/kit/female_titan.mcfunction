scoreboard players set $female snc.battlegrounds 1
effect give @s slow_falling 5 0 true
teleport @s -96.5 80 117.5
execute as @s run function snc:api/get/shifter/female
scoreboard players set @s snc.transform 300